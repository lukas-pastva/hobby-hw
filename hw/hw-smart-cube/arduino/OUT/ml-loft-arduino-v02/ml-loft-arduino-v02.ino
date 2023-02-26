11#include <EtherCard.h>
#include <SPI.h>
//#include <DHT.h>
#include <LiquidCrystal_I2C.h>
static uint32_t timer, timerSwitch, timerMonWeb, timerNetworkDown, timerNetworkDownCount;
bool networkUsed = false;
LiquidCrystal_I2C lcd(0x3F, 16, 2);

//////////////////////////////////////////////////////////////////
//Temp
//#define DHTPINloft 4
//#define DHTPINout 3
//#define DHTTYPE DHT11
//DHT dhtLoft(DHTPINloft, DHTTYPE);
//DHT dhtOut(DHTPINout, DHTTYPE);
String tempLoft, humidityLoft, tempOut, humidityOut;

//////////////////////////////////////////////////////////////////
//Internet
static byte mymac[] = { 0x74,0x69,0x69,0x2D,0x30,0x33 };
byte Ethernet::buffer[700];
const char website[] PROGMEM = "pastwo.ddns.net";

//////////////////////////////////////////////////////////////////
// rele
int sw1camFront = 8;
int sw2camLoft = 7;
int sw3lightFront = 6;
int sw4fan = 5;
int resetPin = 3;
int resetNetworkPin = 2;


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void setup () {
  digitalWrite(resetPin, HIGH);
  digitalWrite(resetNetworkPin, HIGH);
  Serial.begin(57600);  
  delay(10);

  //////////////////////////////////////////////////////////////////
  //DHT
  //pinMode(DHTPINloft, INPUT); 
  //dhtLoft.begin();
  //dhtOut.begin();

  //////////////////////////////////////////////////////////////////
  //LCD
  //lcd.begin();   
  //lcd.backlight();
  
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

  delay(5000);

  //////////////////////////////////////////////////////////////////
  //rele  
  pinMode(sw1camFront, OUTPUT);
  pinMode(sw2camLoft, OUTPUT);
  pinMode(sw3lightFront, OUTPUT);
  pinMode(sw4fan, OUTPUT);
  //reset
  pinMode(resetPin, OUTPUT);
  pinMode(resetNetworkPin, OUTPUT);
  

  digitalWrite(sw1camFront, HIGH);
  digitalWrite(sw2camLoft, HIGH);
  digitalWrite(sw3lightFront, HIGH);
  digitalWrite(sw4fan, HIGH);
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void loop () {  
  //////////////////////////////////////////////////////////////////
  //Internet
  ether.packetLoop(ether.packetReceive()); 

  //////////////////////////////////////////////////////////////////
  //resetnem ak je netowrok down
  if(millis() > (timerNetworkDown+30000) ){    
    if(timerNetworkDownCount > 2){
      Serial.println(F("resetujem network"));    
      digitalWrite(resetNetworkPin, LOW);
      delay(500);
      digitalWrite(resetNetworkPin, HIGH);    
    }
    if(timerNetworkDownCount > 5){
      Serial.println(F("resetujem arduino"));    
      timerNetworkDownCount = 0;
      digitalWrite(resetPin, LOW);
      delay(500);
      digitalWrite(resetPin, HIGH); 
    }
    delay(2000);
    timerNetworkDownCount ++;  
    networkUsed = false;
    timerNetworkDown = millis();
    Serial.println(F("timerNetworkDownCount"));    
    Serial.println(timerNetworkDownCount);        
  }

  //////////////////////////////////////////////////////////////////
  //monitoring - web save
  if (millis() > timerMonWeb) {
    timerMonWeb = millis() + 6000;
    if(!networkUsed){
      Serial.println(F("robim teploty"));
      //networkUsed = true;

      //tempLoft = dhtLoft.readTemperature();
      //humidityLoft = dhtLoft.readHumidity();
      //tempOut = dhtOut.readTemperature();
      //humidityOut = dhtOut.readHumidity();
      //Serial.println("tempLoft:"+tempLoft);
      //Serial.println("humidityLoft:"+humidityLoft);
      //Serial.println(F("robim teploty2"));
      //Serial.println("tempOut:"+tempOut);
      //Serial.println("humidityOut:"+humidityOut);

      //lcd.setCursor ( 0, 0 );
      //lcd.print("Loft:"+tempLoft);
      //lcd.setCursor ( 0, 1 );
      //lcd.print("Out:"+tempOut);
      
      if(tempLoft.toInt()>25){
        digitalWrite(sw4fan, LOW);
      } else {
        digitalWrite(sw4fan, HIGH);
      }
      char buff[128]="";
      //sprintf (buff, "?action=record&val1=%d&type1=3&val2=%d&type2=10&val3=%d&type3=1&val4=%d&type4=11", (int)dhtLoft.readTemperature(), (int)dhtLoft.readHumidity(), (int)dhtLoft.readTemperature(), (int)dhtLoft.readHumidity());//, (int)dhtOut.readTemperature(), (int)dhtOut.readHumidity());
      //Serial.println(buff);      
      //ether.browseUrl(PSTR("/index.php"), buff, website, callback);    
      Serial.println(F("robim teploty4"));
    }else{
      Serial.println(F("nerobim teploty"));
    }
  }

  //////////////////////////////////////////////////////////////////
  //vypinace
  if (millis() > timerSwitch) {
    timerSwitch = millis() + 3350; 
    if(!networkUsed){
      Serial.println(F("robim vypinace"));
      networkUsed = true;
      ether.browseUrl(PSTR("/index.php"), "?action=getswitches&id1=2&id2=1&id3=3", website, callback);
    }else{
      Serial.println(F("nerobim vypinace"));
    }
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Internet
static void callback (byte status, word off, word len) {  
  Ethernet::buffer[off+len] = 0;
  String val = (const char*)Ethernet::buffer + off;
  Serial.println("val:");
  //Serial.println(val);
  if(val.indexOf("pastwo")>-1){
    String values = val.substring((val.indexOf("pastwo")+6), (val.indexOf("pastwo")+26));    
    values = values.substring(0, values.indexOf("pastwo"));
    
    //sw1camFront
    if(values.substring(0,1).indexOf("1") == 0){
      Serial.println(F("ON sw1camFront"));
      digitalWrite(sw1camFront, HIGH);
    } else {
      digitalWrite(sw1camFront, LOW);
      Serial.println(F("OFF sw1camFront"));
    } 
  
    //sw2camLoft
    if(values.substring(1,2).indexOf("1") == 0){
      Serial.println(F("ON sw2camLoft"));
      digitalWrite(sw2camLoft, LOW);
    } else {
      digitalWrite(sw2camLoft, HIGH);
      Serial.println(F("OFF sw2camLoft"));
    }
  
    //sw3lightFront
    if(values.substring(2,3).indexOf("1") == 0){
      Serial.println(F("ON sw3lightFront"));
      digitalWrite(sw3lightFront, LOW);
    } else {
      digitalWrite(sw3lightFront, HIGH);
      Serial.println(F("OFF sw3lightFront"));
    }
  }
  networkUsed = false;
  timerNetworkDownCount = 0;
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
