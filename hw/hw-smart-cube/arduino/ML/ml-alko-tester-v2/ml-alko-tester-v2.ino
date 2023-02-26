#include <SPI.h>
#include <Wire.h>
#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define OLED_RESET LED_BUILTIN
Adafruit_SSD1306 display(OLED_RESET);

char server[] = "192.168.1.2";
const char* ssid = "velupapa";
const char* password = "lukas360";

WiFiClient clientRecord;
static uint32_t timer;

bool switchStart = false;
bool switchStop = false;

void setup(void)
{
  Serial.begin(9600);
  delay(10);
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)
  
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("WiFi connected");
  Serial.println(WiFi.localIP());

  display.display();
  delay(2000);
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setCursor(0,0);
  display.println("Wifi connected");
  display.println(WiFi.localIP());
  display.display();
  delay(2000);


  pinMode(D5, INPUT_PULLUP);
  pinMode(D6, INPUT_PULLUP);

  pinMode(D0, INPUT);
  pinMode(D1, INPUT);
  pinMode(D2, INPUT);
  pinMode(D3, INPUT);
  pinMode(D4, INPUT);
  pinMode(D7, INPUT);
  pinMode(D8, INPUT);
  
  display.clearDisplay();
  display.setCursor(0,0);
  display.println("FUKAJ!!!");
}

void loop() {   
  
  if (millis() > timer) {
    timer = millis() + 300;
    
    //nacitam hodnotu podla hodnoty senzora
    switchStart = digitalRead(D6);
    switchStop = digitalRead(D5);

    Serial.println("digitalRead(D0):");
    Serial.println(analogRead(D0));
    Serial.println("digitalRead(D1):");
    Serial.println(analogRead(D1));
    Serial.println("digitalRead(D2):");
    Serial.println(analogRead(D2));
    Serial.println("digitalRead(D3):");
    Serial.println(analogRead(D3));
    Serial.println("digitalRead(D4):");
    Serial.println(analogRead(D4));
    Serial.println("digitalRead(D7):");
    Serial.println(analogRead(D7));
    Serial.println("digitalRead(D8):");
    Serial.println(analogRead(D8));

    if(!switchStart){
      display.setCursor(0,20);
      display.println("start");
      display.display();
    }else{
      display.setCursor(0,20);      
      display.display();
    }

    if(!switchStop){
      display.setCursor(0,20);
      display.println("stop");
      display.display();
    }else{
      display.setCursor(0,20);      
      display.display();
    }
    display.setCursor(0,0);
    display.println("FUKAJ!!!");
  }
}

