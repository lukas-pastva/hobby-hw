#include <SPI.h>
#include <DHT.h>
#include <EtherCard.h>
static byte mymac[] = { 0x74,0x69,0x69,0x2D,0x30,0x21 };
static byte myip[] = { 192,168,1,32 }; 
byte Ethernet::buffer[700];
static uint32_t timer;
const char website[] PROGMEM = "pastwo.ddns.net";

#define DHTTYPE DHT11
DHT dhtGaraz(9, DHTTYPE);//teplomer garaz
DHT dhtVonku(6, DHTTYPE);//teplomer nb vonku
String tempGaraz;

int switchCam = 7;
int switchFan = 8;

static void my_callback (byte status, word off, word len) {
  Serial.println("parsujem kameru");
  Ethernet::buffer[off+600] = 0;
  String returnVal = (const char*) Ethernet::buffer + off;
  if(returnVal.indexOf("pastwo1") > 0){
    Serial.println("zapinam kameru");
    digitalWrite(switchCam, HIGH);
  }
  if(returnVal.indexOf("pastwo0") > 0){
    digitalWrite(switchCam, LOW);
    Serial.println("vypinam kameru");
  }      
}

void setup () {
  Serial.begin(9600);
  dhtGaraz.begin();
  dhtVonku.begin();
  delay(10);
    
  pinMode(switchCam, OUTPUT);
  pinMode(switchFan, OUTPUT);
  ether.hisport = 82;
  if (ether.begin(sizeof Ethernet::buffer, mymac) == 0){
    Serial.println(F("Failed to access Ethernet controller"));
  }
  Serial.print("start3");
  if (!ether.dhcpSetup()){
    Serial.println(F("DHCP failed"));
  }
  Serial.print("start4");
  ether.printIp("IP:  ", ether.myip);
  ether.printIp("GW:  ", ether.gwip);
  ether.printIp("DNS: ", ether.dnsip);
  Serial.print("start5");
  #if 1
  if (!ether.dnsLookup(website))
  Serial.println("DNS failed");
  #elif 2
  char websiteIP[] = "192.168.1.1";
  ether.parseIp(ether.hisip, websiteIP);
  #else
  byte hisip[] = { 192,168,1,1 };
  ether.copyIp(ether.hisip, hisip);
  #endif
  ether.printIp("SRV: ", ether.hisip);
  Serial.print("start6");
}

void loop () {
  ether.packetLoop(ether.packetReceive());
  
  if (millis() > timer) {
    timer = millis() + (5000);
    char buff[128]="";
    sprintf (buff, "&type1=5&temp1=%d&humidity1=%d&type2=6&temp2=%d&humidity2=%d&id=2", (int)dhtGaraz.readTemperature(), (int)dhtGaraz.readHumidity(),(int)dhtVonku.readTemperature(), (int)dhtVonku.readHumidity() );
    Serial.println(buff);
    ether.browseUrl(PSTR("/index.php?action=multi"), buff, website, my_callback);

    tempGaraz = dhtGaraz.readTemperature();
    if(tempGaraz.toInt()>25){
      digitalWrite(switchFan, HIGH);
    } else {
      digitalWrite(switchFan, LOW);
    }
  }
}

