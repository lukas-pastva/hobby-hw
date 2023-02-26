#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

char server[] = "192.168.1.2";
const char* ssid = "velupapa";
const char* password = "lukas360";

static uint32_t timer;

static const uint8_t pinPolievanie = 2;

void setup(void)
{
  Serial.begin(9600);
  delay(10);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.print(".");
  }
  Serial.println("WiFi connected");
  Serial.println(WiFi.localIP());

  //toto je zavlazovanie
  /*pinMode(1, OUTPUT);
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
  pinMode(14, OUTPUT);*/
  pinMode(pinPolievanie, OUTPUT);
  
}

void loop() {  
  if (millis() > timer) {
    timer = millis() + 5000;

      if (WiFi.status() == WL_CONNECTED) {
        HTTPClient http;
        http.begin("http://192.168.1.2:82/?action=multi&id=6");
        int httpCode = http.GET(); 
        if(httpCode > 0) {
          String payload = http.getString();
          if(payload.indexOf("two1") > 0){
            /*digitalWrite(1, HIGH);
            digitalWrite(2, HIGH);
            digitalWrite(3, HIGH);
            digitalWrite(4, HIGH);
            digitalWrite(5, HIGH);
            digitalWrite(6, HIGH);
            digitalWrite(7, HIGH);
            digitalWrite(8, HIGH);
            digitalWrite(9, HIGH);
            digitalWrite(10, HIGH);
            digitalWrite(11, HIGH);
            digitalWrite(12, HIGH);
            digitalWrite(13, HIGH);
            digitalWrite(14, HIGH);*/
            digitalWrite(pinPolievanie, HIGH);
            
            Serial.println("high");
          }
          if(payload.indexOf("two0") > 0){
            /*digitalWrite(1, LOW);
            digitalWrite(2, LOW);
            digitalWrite(3, LOW);
            digitalWrite(4, LOW);
            digitalWrite(5, LOW);
            digitalWrite(6, LOW);
            digitalWrite(7, LOW);
            digitalWrite(8, LOW);
            digitalWrite(9, LOW);
            digitalWrite(10, LOW);
            digitalWrite(11, LOW);
            digitalWrite(12, LOW);
            digitalWrite(13, LOW);
            digitalWrite(14, LOW);*/
            digitalWrite(pinPolievanie, LOW);
            Serial.println("low");
          }
        }
        http.end();
      }
  }
}
