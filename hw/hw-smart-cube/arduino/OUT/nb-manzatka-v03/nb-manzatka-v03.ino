#include <SPI.h>
#include <Wire.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

const char* ssid = "ZTE-HU2RA5";
const char* password = "2gb6ejudgu5c";
//const char* ssid = "velupapa";
//const char* password = "lukas360";

WiFiClient clientRecord;
static uint32_t timer;

String temp;

int sw1ventilator = D1;
int sw2kameraTerasa = D2;
int sw3monitor = D3;
int sw4kamerovySystem = D4;

void setup(void)
{
  Serial.begin(9600);
  delay(100);

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println(WiFi.localIP());

  pinMode(sw1ventilator, OUTPUT);
  pinMode(sw2kameraTerasa, OUTPUT);
  pinMode(sw3monitor, OUTPUT);
  pinMode(sw4kamerovySystem, OUTPUT);

  digitalWrite(sw1ventilator, HIGH);
  digitalWrite(sw2kameraTerasa, HIGH);
  digitalWrite(sw3monitor, HIGH);
  digitalWrite(sw4kamerovySystem, HIGH);
}

void loop() {
  if (millis() > timer) {
    timer = millis() + 60000;
    if(digitalRead(D5) == 1){
      Serial.print("Zapinam Ventilator");
      digitalWrite(sw1ventilator, HIGH);
    }else{
      Serial.print("Vypinam Ventilator");
      digitalWrite(sw1ventilator, LOW);
    }    

    if (WiFi.status() == WL_CONNECTED) {
      HTTPClient httpSw;
      //id1=8 = kamra trasa / D2 HIGH/LOW
      //id2=9 = monitor / D3 LOW/HIGH
      //id3=10 = kamrovy system / D4 HIGH/LOW
      httpSw.begin("http://pastwo.ddns.net:82/?action=getswitches&id1=8&id2=9&id3=10");
      int httpCodeSw = httpSw.GET();

      if(httpCodeSw > 0) {
        String val = httpSw.getString();

        if(val.indexOf("pastwo")>-1){
          String values = val.substring(val.indexOf("pastwo")+6);
          values = values.substring(0, values.indexOf("pastwo"));
          Serial.println(values);

          //sw2kameraTerasa
          if(values.substring(0,1).indexOf("1") == 0){
            Serial.println(F("ON sw2kameraTerasa"));
            digitalWrite(sw2kameraTerasa, HIGH);
          } else {
            digitalWrite(sw2kameraTerasa, LOW);
            Serial.println(F("OFF sw2kameraTerasa"));
          }

          //sw3monitor
          if(values.substring(1,2).indexOf("1") == 0){
            Serial.println(F("ON sw3monitor"));
            digitalWrite(sw3monitor, LOW);
          } else {
            digitalWrite(sw3monitor, HIGH);
            Serial.println(F("OFF sw3monitor"));
          }

          //sw4kamerovySystem
          if(values.substring(2,3).indexOf("1") == 0){
            Serial.println(F("ON sw4kamerovySystem"));
            digitalWrite(sw4kamerovySystem, HIGH);
          } else {
            digitalWrite(sw4kamerovySystem, LOW);
            Serial.println(F("OFF sw4kamerovySystem"));
          }
      
        }
      }
      httpSw.end();
    }
  }
}
