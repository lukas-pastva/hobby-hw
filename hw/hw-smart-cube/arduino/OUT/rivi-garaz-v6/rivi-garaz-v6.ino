#include <SPI.h>
#include <DHT.h>
#include <EtherCard.h>
static byte mymac[] = { 0x74,0x69,0x69,0x2D,0x30,0x31 };
byte Ethernet::buffer[700];
static uint32_t timer;
const char websiteVypinace[] PROGMEM = "pastwo.ddns.net";
const char websiteGaraz[] PROGMEM = "pastwo.ddns.net";
const char websiteVonku[] PROGMEM = "pastwo.ddns.net";

#define DHTPINgaraz 9 //teplomer garaz
#define DHTPINvonku 6 //teplomer nb vonku
#define DHTTYPE DHT11
DHT dhtGaraz(DHTPINgaraz, DHTTYPE);
DHT dhtVonku(DHTPINvonku, DHTTYPE);
String tempGaraz, tempVonku, humidityGaraz, humidityVonku;
static uint32_t timerTemp;
char buffGaraz[128];
char buffVonku[128];

int SwitchCam = 7;
int FanCam = 8;

static void my_callback (byte status, word off, word len) {
  Serial.println("parsujem vypinace");
  Ethernet::buffer[off+600] = 0;
  String returnVal = (const char*) Ethernet::buffer + off;
  if(returnVal.indexOf("pastwo0pastwo") > 0){
    Serial.println("zapinam");
    digitalWrite(SwitchCam, HIGH);
  }
  if(returnVal.indexOf("pastwo1pastwo") > 0){
    digitalWrite(SwitchCam, LOW);
    Serial.println("vtpinam");
  }      
}

static void my_callbackEmpty (byte status, word off, word len) {}

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
  /*#if 1
  if (!ether.dnsLookup(website))
  Serial.println("DNS failed");
  #elif 2
  char websiteIP[] = "192.168.1.1";
  ether.parseIp(ether.hisip, websiteIP);
  #else
  byte hisip[] = { 192,168,1,1 };
  ether.copyIp(ether.hisip, hisip);
  #endif
  ether.printIp("SRV: ", ether.hisip);*/
}

void loop () {
  ether.packetLoop(ether.packetReceive());
  if (millis() > timer) {
    timer = millis() + 5000;
    Serial.println("vypinace");
    ether.browseUrl(PSTR("/index.php?action=getswitch&id=2"), "", websiteVypinace, my_callback);
  }

  if (millis() > timerTemp) {
    Serial.println("teplomery");
    timerTemp = millis() + 300000;
    
    tempGaraz = dhtGaraz.readTemperature();
    humidityGaraz = dhtGaraz.readHumidity();
    Serial.println("tempGaraz:"+tempGaraz);
    Serial.println("humidityGaraz:"+humidityGaraz);    
    buffGaraz[128]="";
    sprintf (buffGaraz, "temp=%d&humidity=%d", (int)dhtGaraz.readTemperature(), (int)dhtGaraz.readHumidity() );
    ether.browseUrl(PSTR("/index.php?action=record&type=5&"), buffGaraz, websiteGaraz, my_callbackEmpty);
    
    if(tempGaraz.toInt()>25){
      digitalWrite(FanCam, HIGH);
    } else {
      digitalWrite(FanCam, LOW);
    }
        
    tempVonku = dhtVonku.readTemperature();
    humidityVonku = dhtVonku.readHumidity();
    
    Serial.println("tempVonku:"+tempVonku);
    Serial.println("humidityVonku:"+humidityVonku);
    
    buffVonku[128]="";
    sprintf (buffVonku, "temp=%d&humidity=%d", (int)dhtVonku.readTemperature(), (int)dhtVonku.readHumidity() );
    ether.browseUrl(PSTR( "/index.php?action=record&type=6&"), buffVonku, websiteVonku, my_callbackEmpty);    
  }
}
