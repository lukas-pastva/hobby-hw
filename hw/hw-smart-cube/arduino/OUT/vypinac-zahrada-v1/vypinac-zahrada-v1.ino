#include <EtherCard.h>
#include <DHT.h>
static byte mymac[] = { 0x74,0x69,0x69,0x2D,0x30,0x21 };
static byte myip[] = { 192,168,1,173 };
static byte gwip[] = { 192,168,1,1 };
static byte hisip[] = { 80,94,55,175 };

byte Ethernet::buffer[700];
static uint32_t timer;
const char website[] PROGMEM = "pastwo.ddns.net";

#define DHTTYPE DHT11
DHT dhtVonku(9, DHTTYPE);
String tempVonku;
 
int switchCamVpravo = 4;
int switchCamVstrede = 5;
int switchFan = 7;

//voltmeter = A7
//teplomer = D9
//rele kamera vpravo = 4
//rele kamera v strede = 5
//rele ventilator = 7

void setup () {
  Serial.begin(9600);
  delay(10);

  pinMode(switchCamVpravo, OUTPUT);
  pinMode(switchCamVstrede, OUTPUT);
  pinMode(switchFan, OUTPUT);

  //pre istotu resetnem ventilator
  digitalWrite(switchFan, LOW);

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
    
    //vypnem strednu kameru zatial ju netreba
    digitalWrite(switchCamVstrede, HIGH);
   
    timer = millis() + (300000);
    char buff[128]="";
    sprintf (buff, "index.php?action=multi&type1=6&temp1=%d&humidity1=%d&id=7", (int)dhtVonku.readTemperature(), (int)dhtVonku.readHumidity() );

    ether.browseUrl(PSTR("/"), buff, website, my_callback);
    tempVonku = dhtVonku.readTemperature();    
    if(tempVonku.toInt()>27){
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
     digitalWrite(switchCamVpravo, HIGH);
   }else{
     digitalWrite(switchCamVpravo, LOW);
     Serial.println("vypinam kameru");
   }   
} 

