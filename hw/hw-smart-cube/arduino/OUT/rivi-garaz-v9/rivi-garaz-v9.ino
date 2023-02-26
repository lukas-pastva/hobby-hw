#include <SPI.h>
#include <DHT.h>
#include <EtherCard.h>
static byte mymac[] = { 0x74,0x69,0x69,0x2D,0x30,0x21 };
static byte myip[] = { 192,168,1,153 };
static byte gwip[] = { 192,168,1,1 };
static byte hisip[] = { 80,94,55,175 };

byte Ethernet::buffer[700];
static uint32_t timer;

const char website[] PROGMEM = "pastwo.ddns.net";

#define DHTTYPE DHT11
DHT dhtGaraz(9, DHTTYPE);//teplomer garaz
DHT dhtVonku(6, DHTTYPE);//teplomer nb vonku
String tempGaraz;
 
int switchCam = 7;
int switchFan = 8;

void setup () {
  Serial.begin(9600);
  delay(10);
    
  pinMode(switchCam, OUTPUT);
  pinMode(switchFan, OUTPUT);
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

  dhtGaraz.begin();  
  dhtVonku.begin();  
}

void loop () {  
  ether.packetLoop(ether.packetReceive());
  
  if (millis() > timer) {
    timer = millis() + (300000);
    char buff[128]="";
    sprintf (buff, "index.php?action=multi&type1=5&temp1=%d&humidity1=%d&type2=6&temp2=%d&humidity2=%d&id=2", (int)dhtGaraz.readTemperature(), (int)dhtGaraz.readHumidity(),(int)dhtVonku.readTemperature(), (int)dhtVonku.readHumidity() );
    
    ether.browseUrl(PSTR("/"), buff, website, my_callback);
    Serial.println(buff);
    tempGaraz = dhtGaraz.readTemperature();
    if(tempGaraz.toInt()>25){
      digitalWrite(switchFan, LOW);
    } else {
      digitalWrite(switchFan, HIGH);
    }
  }
}

static void my_callback (byte status, word off, word len) {
  Serial.println("parsujem kameru");
  Ethernet::buffer[off+600] = 0;
  String returnVal = (const char*) Ethernet::buffer + off;
  if(returnVal.indexOf("two1") > 0){
    Serial.println("zapinam kameru");
    digitalWrite(switchCam, HIGH);
  }
  if(returnVal.indexOf("two0") > 0){
    digitalWrite(switchCam, LOW);
    Serial.println("vypinam kameru");
  }      
}
