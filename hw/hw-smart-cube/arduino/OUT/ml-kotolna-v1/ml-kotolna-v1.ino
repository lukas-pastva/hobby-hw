#include <SPI.h>
#include <UIPEthernet.h>
static byte mymac[] = { 0x74,0x69,0x69,0x2F,0x32,0x21 };
static byte myip[] = { 192,168,1,31 };
static byte gwip[] = { 192,168,1,1 };
static byte hisip[] = { 80,94,55,175 };
byte Ethernet::buffer[700];
const char website[] PROGMEM = "pastwo.ddns.net";
static uint32_t timer, timerMon;

//////////////////////////////////////////////////////////////////
//Reset lan
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
int swL1 = 8;
int swL2 = 9;
int swL3 = 10;
int swL4 = 11;
int swL5 = 22;
int swL6 = 23;
int swL7 = 24;
int swL8 = 25;
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
  Serial.begin(9600);
  delay(10);

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
  pinMode(swL4, OUTPUT);
  pinMode(swL5, OUTPUT);
  pinMode(swL6, OUTPUT);
  pinMode(swL7, OUTPUT);
  pinMode(swL8, OUTPUT);

  digitalWrite(swL1, HIGH);
  digitalWrite(swL2, HIGH);
  digitalWrite(swL3, HIGH);
  digitalWrite(swL4, HIGH);
  digitalWrite(swL5, HIGH);
  digitalWrite(swL6, HIGH);
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
    Serial.println(analogRead(inAmp));
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
    timer = millis() + 30000; 

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

  }
}
/*
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
*/
