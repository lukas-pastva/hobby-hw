#include <SPI.h>
#include <Ethernet3.h>
#include <Base64.h>
#include <Functions.h>
#include <Wire.h>

byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xDE };
char server[] = "system.tronic.sk";
static uint32_t timerGetAction, timerDebug;
char stringToCompare[1024];

IPAddress ip(192, 168, 1, 178);
IPAddress subnet(255, 255, 255, 0);
IPAddress gateway(192, 168, 1, 1);
IPAddress myDns(1, 1, 1, 1);
EthernetClient client;


void setup() {
  Wire.begin();
  //toto budu zapinania i2c veci!
  /*
      Wire.beginTransmission(0x20);
      Wire.write(0x00);
      Wire.write(0x00);
      Wire.endTransmission();
    
      Wire.beginTransmission(0x20);
      Wire.write(0x01);
      Wire.write(0x00);
      Wire.endTransmission(); 
    
      Wire.beginTransmission(0x20);
      Wire.write(0x12);
      Wire.write(0xff);
      Wire.endTransmission();
   */
  
  Serial.begin(9600);
  Ethernet.begin(mac, ip, subnet, gateway, myDns);
  Serial.print("My IP address: ");
  Serial.println(Ethernet.localIP());

  //stringToCompare = ".";
}

void loop() {  
  if (millis() > timerDebug) {
    timerDebug = millis() + 60000;  
    //i2cScan();
    //Serial.println(client.available());
    //Serial.println(client.connected());
  }
  
  if (client.available()) {
    char c = client.read();
    append(stringToCompare, c);    
    if(strlen(stringToCompare)>344){
      Serial.println(strlen(stringToCompare));
      if (strContains("<<<", stringToCompare)) {        
        decideAction(stringToCompare);
        memset(stringToCompare, 0, sizeof(stringToCompare));        
      }
    }
  }
 
  //////////////////////////////////////////////////////////////////
  //timerGetAction
  if (millis() > timerGetAction) {
    client.stop();
    timerGetAction = millis() + 5000;    
    delay(1000);
    Serial.println("connecting");

    if (client.connect(server, 80)) {
      Serial.println(" / connected");
      
      /************BASE 64 **************/
      char inputString[16]="";
      sprintf(inputString, "|startup|time=%d", (int)millis());
      int inputStringLength = sizeof(inputString);
      int encodedLength = Base64.encodedLength(inputStringLength);
      char encodedString[encodedLength];
      Base64.encode(encodedString, inputString, inputStringLength);
      /************BASE 64 **************/
    
      char buff[128]="";
      sprintf (buff, "GET /index.php?action=getAction&hash=vwvksbzrhicpfumoymcydoszsszczfyx&data=%s HTTP/1.1", encodedString);
      client.println(buff);
      //Serial.println(buff);
      //client.println("GET /index.php?action=log&hash=vwvksbzrhicpfumoymcydoszsszczfyx&data=startup&time="+millis()+" HTTP/1.1");
      client.println("Host: system.tronic.sk");
      client.println("Connection: close");
      client.println();
    } else {
      Serial.println("connection failed");
    }
    //////////////////////////////////////////////////////////////////
  }
}

void decideAction(char* s){
  String val = (const char*) s;
  int firstPos = val.indexOf(">>>");
  if(firstPos>-1){
    String values = val.substring(firstPos+3);
    values = values.substring(0, values.indexOf("<<<"));
    if(strContains("i2c", values)){
      char * i2cScanRet;      
      i2cScanRet = i2cScan();
      Serial.println("xxx");
      Serial.println(i2cScanRet);
    }      
  }
}

 //values.substring(0,1).indexOf("1") == 0
