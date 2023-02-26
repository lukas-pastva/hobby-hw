#include <SPI.h>
#include <Wire.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

const char* ssid = "east-side";
const char* password = "Lukas900.";

static uint32_t timer;
void setup(void)
{
  Serial.begin(9600);  
  delay(5000);

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println(WiFi.localIP());
}

void loop() {

  if (millis() > timer) {
    timer = millis()+5000;
    Serial.print(".");
    if (WiFi.status() == WL_CONNECTED) {
      HTTPClient httpSw;
      httpSw.begin("http://cron.tronic.sk/?action=cron&hash=akxdzlcdsvxdsbddmcedxwisdxjvvpwd");       

      int httpCodeSw;
      
      httpCodeSw = httpSw.GET();      
      Serial.println(httpCodeSw);
      
      if(httpCodeSw > 0) {
        String val = httpSw.getString(); 
        Serial.println(val);   
      }
      httpSw.end();
    }
  }
}
