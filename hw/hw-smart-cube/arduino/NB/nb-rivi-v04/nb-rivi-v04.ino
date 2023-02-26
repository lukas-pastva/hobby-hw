#include <SPI.h>
#include <Ethernet3.h>
#include <Base64.h>
#include <Wire.h>

byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xDE };
char server[] = "system.tronic.sk";
static uint32_t timerGetAction, timerDebug;
byte stringToCompare[256];
int i;

IPAddress ip(192, 168, 1, 1);
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
  if (Ethernet.begin(mac) == 0) {
    Serial.println("Failed to configure Ethernet using DHCP");
    Ethernet.begin(mac, ip);
  }
  i = 0;
}

void loop() {  
  if (millis() > timerDebug) {
    timerDebug = millis() + 1000;  
    //Serial.println(client.available());
    //Serial.println(client.connected());
  }
  
  if (client.available()) {
    char c = client.read();
    //Serial.print(c);

    for(; i < 256; i++){
      stringToCompare[i] = c;
    }

    if(stringToCompare[255]){
      //Serial.println('....................................');
      //Serial.println(stringToCompare);
      const char actionText = "ok";
 
      char p; 
      p = strstr (stringToCompare, actionText);
      if (p) {
        Serial.println("found ["); 
        //Serial.print(actionText); Serial.print("] at position "); Serial.print((int) (p - b));
      }
      memset(stringToCompare, 0, 255);
      i = 0;
    }
  }

  // if the server's disconnected, stop the client:
  if (!client.connected()) {
    client.stop();
  }

  //////////////////////////////////////////////////////////////////
  //timerGetAction
  if (millis() > timerGetAction) {
    timerGetAction = millis() + 5000;    
    delay(1000);
    Serial.println("connecting...");
  
    if (client.connect(server, 80)) {
      Serial.println("connected");
      
      /************BASE 64 **************/
      char inputString[16]="";
      sprintf(inputString, "|startup|time=%d", (int)millis());
      int inputStringLength = sizeof(inputString);
      int encodedLength = Base64.encodedLength(inputStringLength);
      char encodedString[encodedLength];
      Base64.encode(encodedString, inputString, inputStringLength);
      /************BASE 64 **************/
    
      char buff[128]="";
      sprintf (buff, "GET /index.php?action=log&hash=vwvksbzrhicpfumoymcydoszsszczfyx&data=%s HTTP/1.1", encodedString);
      client.println(buff);
      Serial.println(buff);
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


void i2cScan(){
  byte error, address;
  int nDevices;

  Serial.println("Scanning...");

  nDevices = 0;
  for(address = 1; address < 127; address++ ) 
  {
    Wire.beginTransmission(address);
    error = Wire.endTransmission();

    if (error == 0)
    {
      Serial.print("I2C device found at address 0x");
      if (address<16) 
        Serial.print("0");
      Serial.print(address,HEX);
      Serial.println("  !");

      nDevices++;
    }
    else if (error==4) 
    {
      Serial.print("Unknown error at address 0x");
      if (address<16) 
        Serial.print("0");
      Serial.println(address,HEX);
    }    
  }
  if (nDevices == 0)
    Serial.println("No I2C devices found\n");
  else
    Serial.println("done\n");

  delay(5000);  
}

