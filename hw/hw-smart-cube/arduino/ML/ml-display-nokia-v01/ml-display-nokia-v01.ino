#include <SPI.h>
#include <Wire.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <DHT.h>
#include <U8g2lib.h>
#include <SPI.h>


const char* ssid = "velupapa";
const char* password = "lukas360";

#define DHTPIN D6
#define DHTTYPE DHT11
DHT dht(DHTPIN, DHTTYPE);
String temp, humidity;

static uint32_t timer;
static uint32_t timerWww;

int sw1displej = D4;
int in1pir = A0;//D8;

U8G2_PCD8544_84X48_1_4W_HW_SPI u8g2(U8G2_R0, /* CE=*/ 4, /* DC=*/ 0, /* RST=*/ 5);


void setup(void)
{
  Serial.begin(74880);  
  
  pinMode(sw1displej, OUTPUT);
  pinMode(in1pir, INPUT);
  
  digitalWrite(sw1displej, LOW);
  delay(1000);
  dht.begin();

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println(WiFi.localIP());

   u8g2.begin();

}

void loop() {
  if (millis() > timer) {
    timer = millis() + 2000;
  
    temp = dht.readTemperature();
    humidity = dht.readHumidity();

    if(temp.toInt()==0){
      Serial.println(F("Opatovne loadujem teplotu.-------------------------------------------"));
      Serial.println(temp.toInt());
      delay(1000);  
      temp = dht.readTemperature();
      humidity = dht.readHumidity();
    }
    
    Serial.println("temp:"+temp);
    Serial.println("humidity:"+humidity);
    
    long state = analogRead(in1pir);
    if(state > 400){
      Serial.print(F("Zapinam displej"));
      digitalWrite(sw1displej, LOW);
    }else{
      Serial.print(F("Vypinam displej"));
      digitalWrite(sw1displej, HIGH);
    }
    Serial.print(state);
    
    u8g2.clear();                         // Display Löschen
    u8g2.firstPage();
    do {
        u8g2.setFont(u8g2_font_helvB08_tf); // Schrift definieren
        u8g2.setCursor(7, 22);              // Cursor auf Pixel X=7 und Y=22 setzen
        u8g2.print("tmp:");         // Text schreiben
        u8g2.setCursor(10, 34);             // Cursor auf Pixel X=10 und Y=34 setzen
        u8g2.print(temp.toInt());           // Text schreiben
        u8g2.drawRFrame(0, 0, 84, 48, 8);   // Rechtek mit Rundung Zeichnen
        u8g2.sendBuffer();                  // Daten an Display schicken
    } while ( u8g2.nextPage() );

  }

  if (millis() > timerWww) {
      timerWww = millis() + 600000;
      if(WiFi.status() == WL_CONNECTED) {
        HTTPClient http;
        Serial.println(F("Nahravam teplomer"));
        http.begin("http://system.tronic.sk/?action=record&type1=18&val1="+temp+"&type2=19&val2="+humidity);
        http.GET();
        http.end();
      }
  }

}

