#include <SPI.h>
#include <DHT.h>
#include <EtherCard.h>
static byte mymac[] = { 0x74,0x69,0x69,0x2D,0x30,0x31 };
byte Ethernet::buffer[700];
static uint32_t timer;
const char website[] PROGMEM = "pastwo.ddns.net";

int D9 = 9;
int D8 = 8;
#define DHTPINgaraz D9 //teplomer garaz
#define DHTPINvonku D8 //teplomer nb vonku
#define DHTTYPE DHT11
DHT dhtGaraz(DHTPINgaraz, DHTTYPE);
DHT dhtVonku(DHTPINvonku, DHTTYPE);
String tempGaraz, tempVonku, humidityGaraz, humidityVonku;
static uint32_t timerTemp;

int SwitchCam = 7;
int FanCam = 8;

void setup () {
  Serial.begin(9600);

  dhtGaraz.begin();
  dhtVonku.begin();
  delay(10);
    
  pinMode(SwitchCam, OUTPUT);
  pinMode(FanCam, OUTPUT);
  
  ether.hisport = 82;
  if (ether.begin(sizeof Ethernet::buffer, mymac) == 0){
    Serial.println(F("Failed to access Ethernet controller"));
  }
  if (!ether.dhcpSetup()){
    Serial.println(F("DHCP failed"));
  }
  ether.printIp("IP:  ", ether.myip);
  ether.printIp("GW:  ", ether.gwip);
  ether.printIp("DNS: ", ether.dnsip);
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
}

void loop () {
  ether.packetLoop(ether.packetReceive());
  if (millis() > timer) {
    timer = millis() + 5000;
    ether.browseUrl(PSTR("/"), "index.php?action=getswitch&id=2", website, my_callback);
  }

  if (millis() > timerTemp) {
    timerTemp = millis() + 5000;
    tempGaraz = dhtGaraz.readTemperature();
    humidityGaraz = dhtGaraz.readHumidity();
    Serial.println("tempGaraz:"+tempGaraz);
    Serial.println("humidityGaraz:"+humidityGaraz);    
    //ether.browseUrl(PSTR("/"), "index.php?action=record&type=5&temp="+tempGaraz+"&humidity="+humidityGaraz+"", website, my_callbackEmpty);
    if(tempGaraz.toInt()>25){
      digitalWrite(FanCam, HIGH);
    } else {
      digitalWrite(FanCam, LOW);
    }
        
    tempVonku = dhtVonku.readTemperature();
    humidityVonku = dhtVonku.readHumidity();
    Serial.println("tempVonku:"+tempVonku);
    Serial.println("humidityVonku:"+humidityVonku);
    //ether.browseUrl(PSTR("/"), "index.php?action=record&type=6&temp="+tempVonku+"&humidity="+humidityVonku+"", website, my_callbackEmpty);
  }
}

static void my_callback (byte status, word off, word len) {
  Ethernet::buffer[off+600] = 0;
  String returnVal = (const char*) Ethernet::buffer + off;
  if(returnVal.indexOf("pastwo0pastwo") > 0){
    digitalWrite(SwitchCam, HIGH);
  }
  if(returnVal.indexOf("pastwo1pastwo") > 0){
    digitalWrite(SwitchCam, LOW);
  }      
}

static void my_callbackEmpty (byte status, word off, word len) {
        
}
