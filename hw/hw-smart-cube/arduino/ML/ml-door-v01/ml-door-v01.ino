#include <SPI.h>
#include <ESP8266WiFi.h>
#include <WiFiClient.h>

char server[] = "192.168.1.2";
const char* ssid = "velupapa";
const char* password = "lukas360";

WiFiClient clientRecord;
WiFiClient clientGet;
static uint32_t timer;
boolean switchON = false;
boolean wasSwitchON = false;

void setup(void)
{
  Serial.begin(9600);
  delay(10);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("WiFi connected");
  Serial.println(WiFi.localIP());

  pinMode(D5, INPUT);
  pinMode(D8, OUTPUT);
}

void loop() {
  if (millis() > timer) {
    timer = millis() + 500;
    
    //nacitam hodnotu podla hodnoty senzora
    switchON = digitalRead(D5);

    //ak je zapnuty poslem to na internet, uz necham na internete nech si to ulozi alebo nie
    if(switchON && !wasSwitchON){
      clientRecord.print("GET /?action=recordfrontdoor HTTP/1.1\r\nHost: 192.168.1.2\r\nConnection: close\r\n\r\n");
      clientRecord.println();clientGet.println();delay(10);
    }

    //neposielam dve rovnake hodnoty po sebe
    wasSwitchON = switchON;
          
    //nezaleziac na tom ako je senzor pojdem zapnut vypnut vypinac podla DB
    if (clientGet.connect(server, 82)) {
      clientGet.print("GET /?action=getswitch&id=3 HTTP/1.1\r\nHost: 192.168.1.2\r\nConnection: close\r\n\r\n");
      clientGet.println();clientGet.println();delay(10);

      while(clientGet.available()){
        String line = clientGet.readStringUntil('\r');
        Serial.println(line);
        Serial.println("vvvvvvvvvvvvvvv");
        if(line.indexOf("two0pas") > 0){
          switchON = false;
        }
        if(line.indexOf("two1pas") > 0){
          switchON = true;
        }
      }
    }

    //zapnem vypnem
    if(switchON){
      Serial.println("zapinam");
      digitalWrite(D8, HIGH);
    }else{
      Serial.println("vypinam");
      digitalWrite(D8, LOW);
    }
    
  }
}
