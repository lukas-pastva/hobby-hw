#include <SPI.h>
#include <DHT.h>
#include <EtherCard.h>
static byte mymac[] = { 0x74,0x69,0x69,0x2D,0x30,0x21 };
static byte myip[] = { 192,168,1,154 };
static byte gwip[] = { 192,168,1,1 };
static byte hisip[] = { 80,94,55,175 };

byte Ethernet::buffer[700];
static uint32_t timer;

const char website[] PROGMEM = "pastwo.ddns.net";

#define DHTTYPE DHT11
DHT dhtVonku(8, DHTTYPE);//teplomer nb vonku
 
int switchCam1 = 4;
int switchCam2 = 5;
int switchFan = 6;
int switchLight = 7;
String tempVonku;

void setup () {
  Serial.begin(9600);
  delay(10);
    
  pinMode(switchCam1, OUTPUT);
  pinMode(switchCam2, OUTPUT);
  pinMode(switchFan, OUTPUT);
  pinMode(switchLight, OUTPUT);
  ether.hisport = 82;
  if (ether.begin(sizeof Ethernet::buffer, mymac, 10) == 0){
    Serial.println(F("Failed to access Ethernet controller"));
  }
  //ether.staticSetup(myip, gwip);  


if (!ether.dhcpSetup())
  {
    Serial.println("Failed to get configuration from DHCP");
    while(1);
  }
  else
    Serial.println("DHCP configuration done");

  if (!ether.dnsLookup(website))
  {
    Serial.println("DNS failed");
    while(1);
  }
  else 
    Serial.println("DNS resolution done"); 

  ether.printIp("SRV IP:\t", ether.hisip);

  
  ether.copyIp(ether.hisip, hisip);

  ether.printIp("My IP: ", ether.myip);
  ether.printIp("Server: ", ether.hisip);

  while (ether.clientWaitingGw())
    ether.packetLoop(ether.packetReceive());
  Serial.println("Gateway found");

  dhtVonku.begin();  
}

void loop () {  
  ether.packetLoop(ether.packetReceive());
  
  if (millis() > timer) {
    timer = millis() + (300000);
    char buff[128]="";
    sprintf (buff, "index.php?action=multi&type1=6&temp1=%d&humidity1=%d&id=7", (int)dhtVonku.readTemperature(), (int)dhtVonku.readHumidity());
    
    ether.browseUrl(PSTR("/"), buff, website, my_callback);
    Serial.println(buff);
    tempVonku = dhtVonku.readTemperature();
    if(tempVonku.toInt()>25){
      digitalWrite(switchFan, HIGH);
      Serial.println("zapinam fan");
    } else {
      digitalWrite(switchFan, LOW);
      Serial.println("vypinam fan");
    }
  }
}

static void my_callback (byte status, word off, word len) {
  Serial.println("parsujem kameru");
  Ethernet::buffer[off+600] = 0;
  String returnVal = (const char*) Ethernet::buffer + off;
  if(returnVal.indexOf("two1") > 0){
    Serial.println("zapinam kameru");
    digitalWrite(switchCam1, HIGH);
  }
  if(returnVal.indexOf("two0") > 0){
    digitalWrite(switchCam1, LOW);
    Serial.println("vypinam kameru");
  }      
}
