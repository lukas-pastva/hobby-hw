#include <EtherCard.h>
#include <SPI.h>
static uint32_t timer, timerSwitch, timerMon, timerMonWeb, timerNetworkDown;
bool networkUsed = false;
//////////////////////////////////////////////////////////////////
//Internet
static byte mymac[] = { 0x74,0x69,0x69,0x2D,0x30,0x31 };
byte Ethernet::buffer[700];
const char website[] PROGMEM = "pastwo.ddns.net";
int lanReset = 41;

//////////////////////////////////////////////////////////////////
//Senzor dym CO
int inGasCO = A15;
int inGasSmoke = A13;

//////////////////////////////////////////////////////////////////
//Senzor svetla
int inLight = A4;

//////////////////////////////////////////////////////////////////
//Senzor svetla
int beep = 44;

//////////////////////////////////////////////////////////////////
//Ampermeter
int inAmp = A14;
float nVPP; // Voltage measured across resistor
float nCurrThruResistorPP; // Peak Current Measured Through Resistor
float nCurrThruResistorRMS; // RMS current through Resistor
float nCurrentThruWire; // Actual RMS current in Wire

//////////////////////////////////////////////////////////////////
//Teplota na zdroji
int inTemp = 7;
int inTempVal = 0;

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
//Prave rele
int swR1 = 14;
int swR2 = 15;
int swR3Ventilator = 16;
int swR4Spalna = 17;
int swR5 = 18;
int swR6 = 19;
int swR7 = 20;
int swR8 = 21;


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
    Serial.println(F("DNS failed"));
#elif 2
  char websiteIP[] = "192.168.1.1";
  ether.parseIp(ether.hisip, websiteIP);
#else
  byte hisip[] = { 192,168,1,1 };
  ether.copyIp(ether.hisip, hisip);
#endif
    
  ether.printIp("SRV: ", ether.hisip);

  //////////////////////////////////////////////////////////////////
  //Senzor svetla
  pinMode(inLight, INPUT);
  
  //////////////////////////////////////////////////////////////////
  //Ampermeter
  pinMode(inAmp, INPUT);
  
  //////////////////////////////////////////////////////////////////
  //Beep
  pinMode(beep, OUTPUT);

  //////////////////////////////////////////////////////////////////
  //Teplota na zdroji je 1 ked je pod hodnotou
  pinMode(inTemp, INPUT);

  //////////////////////////////////////////////////////////////////
  //Gas CO, Smoke
  pinMode(inGasCO, INPUT);
  pinMode(inGasSmoke, INPUT);
  
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
  //Prave rele
  pinMode(swR1, OUTPUT);
  pinMode(swR2, OUTPUT);
  pinMode(swR3Ventilator, OUTPUT);
  pinMode(swR4Spalna, OUTPUT);
  pinMode(swR5, OUTPUT);
  pinMode(swR6, OUTPUT);
  pinMode(swR7, OUTPUT);
  pinMode(swR8, OUTPUT);

  digitalWrite(swR1, HIGH);
  digitalWrite(swR2, HIGH);
  digitalWrite(swR3Ventilator, HIGH);
  digitalWrite(swR4Spalna, HIGH);
  digitalWrite(swR5, HIGH);
  digitalWrite(swR6, HIGH);
  digitalWrite(swR7, HIGH);
  digitalWrite(swR8, HIGH); 

  doBeep();    
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void loop () {  
  //////////////////////////////////////////////////////////////////
  //Internet
  ether.packetLoop(ether.packetReceive()); 

  //////////////////////////////////////////////////////////////////
  //resetnem ak je netowrok down
  if(millis() > (timerNetworkDown+300000) ){
    networkUsed = false;
    //asm volatile ("  jmp 0");
    //meeeh radsej tlacitkaaa
    doBeep();    
  }

  //////////////////////////////////////////////////////////////////
  //monitoring
  if (millis() > timerMon) {
    timerMon = millis() + 100;    
    //////////////////////////////////////////////////////////////////
    //Ampermeter
    //Serial.println(F("Ampeter spotreba:"));
    //Serial.println(F(analogRead(inAmp)));

    //////////////////////////////////////////////////////////////////
    //Senzor svetla
    //Serial.println(F("Svetlo:"));
    //Serial.println(F(analogRead(inLight)));
    //600 vs 300
  }

  //////////////////////////////////////////////////////////////////
  //monitoring - web save
  if (millis() > timerMonWeb) {
    timerMonWeb = millis() + 600000;
    //Ampermeter
    if(!networkUsed){
      networkUsed = true;

      nVPP = getVPP();
      nCurrThruResistorPP = (nVPP/200.0) * 1000.0;
      nCurrThruResistorRMS = nCurrThruResistorPP * 0.707;
      nCurrentThruWire = nCurrThruResistorRMS * 1000;      

      Serial.print(F("Volts Peak : "));
      Serial.println(nVPP,3);
        
      Serial.print(F("Current Through Resistor (Peak) : "));
      Serial.print(nCurrThruResistorPP,3);
      Serial.println(F(" mA Peak to Peak"));
     
      Serial.print(F("Current Through Resistor (RMS) : "));
      Serial.print(nCurrThruResistorRMS,3);
      Serial.println(F(" mA RMS"));
     
      Serial.print(F("Current Through Wire : "));
      Serial.print(nCurrentThruWire);
      Serial.println(F(" mA RMS"));
     
      char buff[128]="";
      char str_amp[6];
      dtostrf(nCurrentThruWire, 4, 2, str_amp);

      double inGasCOVal = analogRead(inGasCO);
      Serial.println(F("inGasCOVal"));
      Serial.println(inGasCOVal);

      double inGasSmokeVal = analogRead(inGasSmoke);
      Serial.println(F("inGasSmokeVal"));
      Serial.println(inGasSmokeVal);
      
      sprintf (buff, "?action=record&val1=%s&type1=9&val2=%d&type2=7&val3=%d&type3=8", str_amp, (int)inGasCOVal, (int)inGasSmokeVal);
      //Serial.println(buff);
      
      
      ether.browseUrl(PSTR("/index.php"), buff, website, callback);    
    }else{
      Serial.println(F("nerobim ampers"));
    }
  }

  //////////////////////////////////////////////////////////////////
  //vypinace
  if (millis() > timerSwitch) {
    timerSwitch = millis() + 3350; 
    if(!networkUsed){
      networkUsed = true;
      ether.browseUrl(PSTR("/index.php"), "?action=getswitches&id1=5&id2=11&id3=4&id4=13", website, callback);
    }else{
      Serial.println(F("nerobim switches"));
    }
  }

  //////////////////////////////////////////////////////////////////
  //ventilator
  if (millis() > timer) {
    timer = millis() + 120000;
    //Teplota na zdroji
    inTempVal = digitalRead(inTemp);
    Serial.println(F("Teplota na zdroji je:"));
    Serial.println(analogRead(inTemp));
    Serial.println(inTempVal);
    if(inTempVal == 1){
      digitalWrite(swR3Ventilator, LOW);
    }else{
      digitalWrite(swR3Ventilator, HIGH);
    }    
  }  
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Internet
static void callback (byte status, word off, word len) {
  Ethernet::buffer[off+600] = 0;
  String val = (const char*) Ethernet::buffer + off;
  if(val.indexOf("pastwo")>-1){
    String values = val.substring(val.indexOf("pastwo")+6);
    values = values.substring(0, values.indexOf("pastwo"));
    Serial.println(values);
  
    //swL5lightZahrada
    if(values.substring(0,1).indexOf("1") == 0){
      Serial.println(F("ON swL5lightZahrada"));
      digitalWrite(swL5lightZahrada, LOW);
    } else {
      digitalWrite(swL5lightZahrada, HIGH);
      Serial.println(F("OFF swL5lightZahrada"));
    } 
  
    //swL6vodaZahrada
    if(values.substring(1,2).indexOf("1") == 0){
      Serial.println(F("ON swL6vodaZahrada"));
      digitalWrite(swL6vodaZahrada, LOW);
    } else {
      digitalWrite(swL6vodaZahrada, HIGH);
      Serial.println(F("OFF swL6vodaZahrada"));
    }
  
    //swL4camObyvacka
    if(values.substring(2,3).indexOf("1") == 0){
      Serial.println(F("ON swL4camObyvacka"));
      digitalWrite(swL4camObyvacka, LOW);
    } else {
      digitalWrite(swL4camObyvacka, HIGH);
      Serial.println(F("OFF swL4camObyvacka"));
    } 
    
    //swR4Spalna
    if(values.substring(3,4).indexOf("1") == 0){
      Serial.println(F("ON swR4Spalna"));
      digitalWrite(swR4Spalna, LOW);
    } else {
      digitalWrite(swR4Spalna, HIGH);
      Serial.println(F("OFF swR4Spalna"));
    }   
  }
  networkUsed = false;
  timerNetworkDown = millis();
  //W5100.execCmdSn(l_sock, Sock_DISCON);
}

float getVPP() {
  float result;
  int readValue;
  int maxValue = 0;
   uint32_t start_time = millis();
   while((millis()-start_time) < 1000) {
       readValue = analogRead(inAmp);
       if (readValue > maxValue) {
           maxValue = readValue;
       }
   }
   result = (maxValue * 5.0)/1024.0;  
   return result;
}

void doBeep(){
  Serial.println(F("Beep"));
  digitalWrite(beep, HIGH);
  delay(100);
  digitalWrite(beep, LOW);
}

 
