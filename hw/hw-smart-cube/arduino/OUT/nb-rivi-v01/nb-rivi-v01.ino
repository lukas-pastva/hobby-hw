#include <EtherCard.h>
#include <DHT.h>
static byte mymac[] = { 0x74,0x69,0x69,0x2D,0x30,0x21 };
static byte myip[] = { 192,168,1,153 };
static byte gwip[] = { 192,168,1,1 };
static byte hisip[] = { 80,94,55,175 };

byte Ethernet::buffer[700];
static uint32_t timer;
const char website[] PROGMEM = "pastwo.ddns.net";

#define DHTTYPE DHT11
DHT dhtGaraz(9, DHTTYPE);
String tempGaraz;
 
int switchCam = 7;
int switchFan = 8;

void setup () {
  Serial.begin(9600);
  delay(10);

  Serial.println("Starting...");
  
  pinMode(switchCam, OUTPUT);
  pinMode(switchFan, OUTPUT);
  digitalWrite(switchCam, HIGH);
  
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
}

void loop () {  
  ether.packetLoop(ether.packetReceive());
  
  if (millis() > timer) {
    timer = millis() + (300000);
    char buff[128]="";

    sprintf (buff, "index.php?action=multi&type1=5&temp1=%d&humidity1=%d&id=6", (int)dhtGaraz.readTemperature(), (int)dhtGaraz.readHumidity() );
    Serial.println(buff);    
    
    ether.browseUrl(PSTR("/"), buff, website, my_callback);
    tempGaraz = dhtGaraz.readTemperature();
    if(tempGaraz.toInt()>27){
      digitalWrite(switchFan, LOW);
    } else {
      digitalWrite(switchFan, HIGH);
    }
  }
}

void my_callback(byte status, word off, word len) {
   char * buff;   
   Ethernet::buffer[off+len] = 0;
   buff = strtok((char*) Ethernet::buffer + off, "#");
   Serial.println("parstujem kameru");

   //Serial.println(buff);
   char *s;
   s = strstr(buff, "pastwo1pastwo");
   if (s != NULL){
     Serial.println("zapinam kameru");
     digitalWrite(switchCam, HIGH);
   }else{
     digitalWrite(switchCam, LOW);
     Serial.println("vypinam kameru");
   }   
} 

