#include <EtherCard.h>
#include <SPI.h>

static uint32_t timer, timerMon;

//////////////////////////////////////////////////////////////////
//Internet
static byte mymac[] = { 0x74,0x69,0x69,0x2D,0x30,0x31 };
byte Ethernet::buffer[700];
const char website[] PROGMEM = "pastwo.ddns.net";
int lanReset = 41;
//////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
//Senzor svetla
int inLight = A4;
//////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
//Ampermeter
int inAmp = A15;
//////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
//Teplota na zdroji
int inTemp = 7;
int inTempVal = 0;
//////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
//Lave rele
int swL1 = 22;
int swL2 = 23;
int swL3 = 24;
int swL4camObyvacka = 25;
int swL5lightZahrada = 11;
int swL6vodaZahrada = 10;
int swL7 = 9;
int swL8 = 8;
//////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
//Prave rele
int swR1 = 14;
int swR2 = 15;
int swR3Ventilator = 16;
int swR4 = 17;
int swR5 = 18;
int swR6 = 19;
int swR7 = 20;
int swR8 = 21;
//////////////////////////////////////////////////////////////////


void setup () {
  Serial.begin(57600);
  delay(10);
  
  //////////////////////////////////////////////////////////////////
  //Internet
  ether.hisport = 82;
  if (ether.begin(sizeof Ethernet::buffer, mymac) == 0) 
    Serial.println(F("Failed to access Ethernet controller"));
  if (!ether.dhcpSetup())
    Serial.println(F("DHCP failed"));
  
  ether.printIp("IP:  ", ether.myip);  ether.printIp("GW:  ", ether.gwip); ether.printIp("DNS: ", ether.dnsip);  

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
  //////////////////////////////////////////////////////////////////

  //////////////////////////////////////////////////////////////////
  //Senzor svetla
  pinMode(inLight, INPUT);
  //////////////////////////////////////////////////////////////////
  
  //////////////////////////////////////////////////////////////////
  //Ampermeter
  pinMode(inAmp, INPUT);
  //////////////////////////////////////////////////////////////////

  //////////////////////////////////////////////////////////////////
  //Teplota na zdroji je 1 ked je pod hodnotou
  pinMode(inTemp, INPUT);
  //////////////////////////////////////////////////////////////////

  //////////////////////////////////////////////////////////////////
  //Lave rele
  pinMode(swL1, OUTPUT);
  pinMode(swL2, OUTPUT);
  pinMode(swL3, OUTPUT);
  pinMode(swL4camObyvacka, OUTPUT);
  pinMode(swL5lightZahrada, OUTPUT);
  pinMode(swL6vodaZahrada, OUTPUT);
  pinMode(swL7, OUTPUT);
  pinMode(swL8, OUTPUT);

  digitalWrite(swL1, HIGH);
  digitalWrite(swL2, HIGH);
  digitalWrite(swL3, HIGH);
  digitalWrite(swL4camObyvacka, HIGH);
  digitalWrite(swL5lightZahrada, HIGH);
  digitalWrite(swL6vodaZahrada, HIGH);
  digitalWrite(swL7, HIGH);
  digitalWrite(swL8, HIGH);
  //////////////////////////////////////////////////////////////////  

  //////////////////////////////////////////////////////////////////
  //Prave rele
  pinMode(swR1, OUTPUT);
  pinMode(swR2, OUTPUT);
  pinMode(swR3Ventilator, OUTPUT);
  pinMode(swR4, OUTPUT);
  pinMode(swR5, OUTPUT);
  pinMode(swR6, OUTPUT);
  pinMode(swR7, OUTPUT);
  pinMode(swR8, OUTPUT);

  digitalWrite(swR1, HIGH);
  digitalWrite(swR2, HIGH);
  digitalWrite(swR3Ventilator, HIGH);
  digitalWrite(swR4, HIGH);
  digitalWrite(swR5, HIGH);
  digitalWrite(swR6, HIGH);
  digitalWrite(swR7, HIGH);
  digitalWrite(swR8, HIGH);
  //////////////////////////////////////////////////////////////////  
  
  //////////////////////////////////////////////////////////////////  
  //Internet
  //////////////////////////////////////////////////////////////////  
}

void loop () {  
  //////////////////////////////////////////////////////////////////
  //Internet
  ether.packetLoop(ether.packetReceive());  
  //////////////////////////////////////////////////////////////////

  //monitoring
  if (millis() > timerMon) {
    timerMon = millis() + 100;
    
    //////////////////////////////////////////////////////////////////
    //Ampetmeter
    //Serial.println("Ampeter spotreba:");
    //Serial.println(analogRead(inAmp));
    //////////////////////////////////////////////////////////////////

    //////////////////////////////////////////////////////////////////
    //Senzor svetla
    //Serial.println("Svetlo:");
    //Serial.println(analogRead(inLight));
    //600 vs 300
    //////////////////////////////////////////////////////////////////

  }

  //vypinace
  if (millis() > timer) {
    timer = millis() + 60000; 

    //////////////////////////////////////////////////////////////////
    //Teplota na zdroji
    inTempVal = digitalRead(inTemp);
    //Serial.println("Teplota na zdroji je:");
    //Serial.println(analogRead(inTemp));
    //Serial.println(inTempVal);    
    if(inTempVal == 1){
      digitalWrite(swR3Ventilator, LOW);
      //Serial.println("Vypinam ventilator");
    }else{
      digitalWrite(swR3Ventilator, HIGH);
      //Serial.println("Zapinam ventilator");  
    }
    //////////////////////////////////////////////////////////////////

    //////////////////////////////////////////////////////////////////
    //kamera obyvacka
    ether.browseUrl(PSTR("/index.php"), "?action=getswitch&id=11", website, callbackVodaZahrada);
    delay(2000);
    //////////////////////////////////////////////////////////////////
    
    //////////////////////////////////////////////////////////////////
    //kamera zahrada
    ether.browseUrl(PSTR("/index.php"), "?action=getswitch&id=4", website, callbackCamObyvacka);
    delay(2000);
    //////////////////////////////////////////////////////////////////
    
    //////////////////////////////////////////////////////////////////
    //Zahradne svetlo
    ether.browseUrl(PSTR("/index.php"), "?action=getswitch&id=5", website, callbackLightZahrada);
    delay(2000);
    //////////////////////////////////////////////////////////////////
  }
}

//////////////////////////////////////////////////////////////////
//Internet
static void callbackLightZahrada (byte status, word off, word len) {
  Ethernet::buffer[off+600] = 0;
  String returnVal = (const char*) Ethernet::buffer + off;
  if(returnVal.indexOf("two1") > 0){
    Serial.println("zapinam LightZahrada");
    digitalWrite(swL5lightZahrada, LOW);
  }
  if(returnVal.indexOf("two0") > 0){
    digitalWrite(swL5lightZahrada, HIGH);
    Serial.println("vypinam LightZahrada");
  }      
}
static void callbackVodaZahrada (byte status, word off, word len) {
  Ethernet::buffer[off+600] = 0;
  String returnVal = (const char*) Ethernet::buffer + off;
  if(returnVal.indexOf("two1") > 0){
    Serial.println("zapinam VodaZahrada");
    digitalWrite(swL6vodaZahrada, LOW);
  }
  if(returnVal.indexOf("two0") > 0){
    digitalWrite(swL6vodaZahrada, HIGH);
    Serial.println("vypinam VodaZahrada");
  }      
}
static void callbackCamObyvacka (byte status, word off, word len) {
  Ethernet::buffer[off+600] = 0;
  String returnVal = (const char*) Ethernet::buffer + off;
  if(returnVal.indexOf("two1") > 0){
    Serial.println("zapinam CamObyvacka");
    digitalWrite(swL4camObyvacka, LOW);
  }
  if(returnVal.indexOf("two0") > 0){
    digitalWrite(swL4camObyvacka, HIGH);
    Serial.println("vypinam CamObyvacka");
  }      
}
//////////////////////////////////////////////////////////////////
