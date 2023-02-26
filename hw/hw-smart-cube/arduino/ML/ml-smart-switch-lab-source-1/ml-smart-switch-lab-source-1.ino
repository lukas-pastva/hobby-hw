#include <SPI.h>
#include <Wire.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

const char* ssid = "velupapa";
const char* password = "lukas360";

static uint32_t timer;
int sw240V = D7;
int swMain = D6;
int stopBtnVal = 0;

void setup(void)
{
  Serial.begin(9600);  

  pinMode(swMain, OUTPUT);
  pinMode(sw240V, OUTPUT);
  pinMode(D5, INPUT_PULLUP);

  digitalWrite(swMain, HIGH);
  digitalWrite(sw240V, HIGH);
  
  delay(5000);

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println(WiFi.localIP());
}

void loop() {

  if (digitalRead(D5) == LOW) {    
   /* digitalWrite(swMain, LOW);            
    digitalWrite(sw240V, LOW); 
    Serial.println("Shutting down.");
    delay(100);*/
    
  }

  if (millis() > timer) {
    timer = millis() +6000;

    if (WiFi.status() == WL_CONNECTED) {
      HTTPClient httpSw;
      httpSw.begin("http://system.tronic.sk/?action=getswitches&id1=25");
      int httpCodeSw = httpSw.GET();

      if(httpCodeSw > 0) {
        String val = httpSw.getString();

        if(val.indexOf("pastwo")>-1){
          String values = val.substring(val.indexOf("pastwo")+6);
          values = values.substring(0, values.indexOf("pastwo"));
          Serial.println(values);

          //swMain
          if(values.substring(0,1).indexOf("1") == 0){
            Serial.println(F("ON swMain"));
            digitalWrite(swMain, HIGH);
            digitalWrite(sw240V, HIGH);
          } else {
            Serial.println(F("OFF swMain"));
            digitalWrite(swMain, LOW);            
            digitalWrite(sw240V, LOW); 
          }

        }
      }
      httpSw.end();
    }
  }
}
