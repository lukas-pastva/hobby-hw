#include <EtherCard.h>
#include <SPI.h>
#include <DHT.h>
static uint32_t timer, timerSwitch, timerNetworkDown, timerNetworkDownCount;
bool networkUsed = false;

//////////////////////////////////////////////////////////////////
//Internet
static byte mymac[] = { 0x74,0x69,0x69,0x2D,0x30,0x34 };
byte Ethernet::buffer[700];
const char website[] PROGMEM = "pastwo.ddns.net";
//int resetNetworkPin = 47;

//////////////////////////////////////////////////////////////////
//rele
int switchCam = 7;
int switchFan = 8;
int resetPin = 6;

//////////////////////////////////////////////////////////////////
//Senzor teplo
int dhtPin = 9;
#define DHTTYPE DHT11
DHT dht(dhtPin, DHTTYPE);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void setup () {
  digitalWrite(resetPin, HIGH);
  //digitalWrite(resetNetworkPin, HIGH);
  Serial.begin(9600);
  delay(10);
  bool networkUsed = false;
  //////////////////////////////////////////////////////////////////
  //Internet
  ether.hisport = 82;
  timerNetworkDownCount = 0;
  if (ether.begin(sizeof Ethernet::buffer, mymac) == 0) 
    Serial.println(F("Failed to access Ethernet controller"));
  if (!ether.dhcpSetup())
    Serial.println(F("DHCP failed"));
  
  ether.printIp("IP:  ", ether.myip);  ether.printIp("GW:  ", ether.gwip); ether.printIp("DNS: ", ether.dnsip);  

#if 1
  if (!ether.dnsLookup(website))
    Serial.println(F("DNS failed"));
#elif 2
  char websiteIP[] = "192.168.1.1";
  ether.parseIp(ether.hisip, websiteIP);
#else
  byte hisip[] = { 192,168,1,1 };
  ether.copyIp(ether.hisip, hisip);
#endif
    
  ether.printIp("SRV: ", ether.hisip);

  //////////////////////////////////////////////////////////////////
  //Reset
  //pinMode(resetPin, OUTPUT);
  //pinMode(resetNetworkPin, OUTPUT);

  //////////////////////////////////////////////////////////////////
  //rele
  pinMode(switchCam, OUTPUT);
  pinMode(switchFan, OUTPUT);
  pinMode(resetPin, OUTPUT);
  pinMode(dhtPin, INPUT);

  digitalWrite(switchCam, HIGH);
  digitalWrite(switchFan, HIGH);
  digitalWrite(resetPin, HIGH);
  
  //////////////////////////////////////////////////////////////////
  //teplomer
  dht.begin();
  
  delay(5000);
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void loop () {  
  //////////////////////////////////////////////////////////////////
  //Internet
  ether.packetLoop(ether.packetReceive()); 

  //////////////////////////////////////////////////////////////////
  //resetnem ak je netowrok down
  if(millis() > (timerNetworkDown+60000) ){
    /*if(timerNetworkDownCount > 2){
      resetNetwork();
    }*/
    
    if(timerNetworkDownCount > 5){
      resetArduino();
    }
    delay(2000);
    
    timerNetworkDownCount ++;
    networkUsed = false;
    timerNetworkDown = millis();
    Serial.println(F("nenastal callback, tak resetujem status networkUsed"));    
    Serial.println(timerNetworkDownCount);  
  }

  //////////////////////////////////////////////////////////////////
  //monitoring - web save
  if (millis() > timer) {
    timer = millis() + 600000;
    
    if(!networkUsed){
      networkUsed = true;     
      char buff[128]="";

      double tempVal = dht.readTemperature();
      Serial.println(F("tempVal"));
      Serial.println(dht.readTemperature());

      double humidityVal = dht.readHumidity();
      Serial.println(F("humidityVal"));
      Serial.println(dht.readHumidity());

      if((int)dht.readTemperature()>25){
        digitalWrite(switchFan, LOW);
        Serial.println("zapinam fan");
      } else {
        digitalWrite(switchFan, HIGH);
        Serial.println("vypinam fan");
      }
      
      sprintf (buff, "?action=record&val1=%d&type1=5&val2=%d&type2=13", (int)tempVal, (int)humidityVal);
      //Serial.println(buff);      
      
      ether.browseUrl(PSTR("/index.php"), buff, website, callback);    
    }else{
      Serial.println(F("nerobim teploty"));
    }
  }

  //////////////////////////////////////////////////////////////////
  //vypinace
  if (millis() > timerSwitch) {
    timerSwitch = millis() + 3350; 
    if(!networkUsed){
      networkUsed = true;
      Serial.println(F("robim request"));
      ether.browseUrl(PSTR("/index.php"), "?action=getswitches&id1=6&id2=18", website, callback);
    }else{
      Serial.println(F("nerobim switches"));
    }
  } 
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Internet
static void callback (byte status, word off, word len) {
  Ethernet::buffer[off+600] = 0;
  String val = (const char*) Ethernet::buffer + off;
  if(val.indexOf("pastwo")>-1){
    String values = val.substring(val.indexOf("pastwo")+6);
    values = values.substring(0, values.indexOf("pastwo"));
    Serial.println(values);
  
    //switchCam
    if(values.substring(0,1).indexOf("1") == 0){
      Serial.println(F("ON switchCam"));
      digitalWrite(switchCam, LOW);
    } else {
      digitalWrite(switchCam, HIGH);
      Serial.println(F("OFF switchCam"));
    }   
    
    //switchReset
    if(values.substring(1,2).indexOf("1") == 0){
      resetNetwork();
      resetArduino();
    }
  }
  networkUsed = false;
  timerNetworkDown = millis();
}

void resetNetwork(){
  delay(200);
  Serial.println(F("resetujem network"));    
  //digitalWrite(resetNetworkPin, LOW);
  delay(500);
  //digitalWrite(resetNetworkPin, HIGH);
}

void resetArduino(){
  delay(1000);
  Serial.println(F("resetujem arduino"));
  timerNetworkDownCount = 0;
  digitalWrite(resetPin, LOW);
  delay(2000);
  digitalWrite(resetPin, HIGH);
}
