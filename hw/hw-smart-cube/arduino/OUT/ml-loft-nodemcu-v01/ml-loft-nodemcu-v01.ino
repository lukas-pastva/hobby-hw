/*#include <Wire.h> 
#include <SPI.h>
#include <DHT.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x3F, 16, 2);

char server[] = "192.168.1.2";
const char* ssid = "velupapa";
const char* password = "lukas360";

#define DHTPINloft D7
#define DHTPINout D8
#define DHTTYPE DHT11
DHT dhtLoft(DHTPINloft, DHTTYPE);
DHT dhtOut(DHTPINout, DHTTYPE);
String tempLoft, humidityLoft, tempOut, humidityOut;
static uint32_t timer;
static uint32_t timerSwitches;
*/
void setup(void)
{
  Serial.begin(9600);
  Serial.println("Starting");
/*
  dhtLoft.begin();
  dhtOut.begin();
  delay(10);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.print(".");
  }
  Serial.println("WiFi connected");
  Serial.println(WiFi.localIP());

  //toto su svetla vonku
  pinMode(D3, OUTPUT);
  //toto je kamera 1
  pinMode(D4, OUTPUT);
  //toto je kamera 2
  pinMode(D5, OUTPUT);
  //toto je ventilator
  pinMode(D6, OUTPUT);

  lcd.begin();   
  lcd.backlight();

  digitalWrite(D3, LOW);
  digitalWrite(D4, LOW);
  digitalWrite(D5, HIGH);
  digitalWrite(D6, LOW);*/
}

void loop() {
    /*
  if (millis() > timer) {
    timer = millis() + 2000;//600000;

    tempLoft = dhtLoft.readTemperature();
    humidityLoft = dhtLoft.readHumidity();
    tempOut = dhtOut.readTemperature();
    humidityOut = dhtOut.readHumidity();
    Serial.println("tempLoft:"+tempLoft);
    Serial.println("humidityLoft:"+humidityLoft);
    Serial.println("tempOut:"+tempOut);
    Serial.println("humidityOut:"+humidityOut);

    lcd.setCursor ( 0, 0 );
    lcd.print("Loft:"+tempLoft);
    lcd.setCursor ( 0, 1 );
    lcd.print("Out:"+tempOut);
    
    if(tempLoft.toInt()>25){
      digitalWrite(D6, LOW);
    } else {
      digitalWrite(D6, HIGH);
    }
    
    if (WiFi.status() == WL_CONNECTED) {
      HTTPClient http;
      http.begin("http://192.168.1.2:82/?action=multi&type1=3&val1="+tempLoft+"&type2=10&val2="+humidityLoft);//+"&type2=1&temp2="+tempOut+"&humidity2="+humidityOut
      http.GET();
      http.end();
    }
  }    

  if (millis() > timerSwitches) {
    timerSwitches = millis() + 5000;

      //predne svetla
      if (WiFi.status() == WL_CONNECTED) {
        HTTPClient httpSw3;
        httpSw3.begin("http://192.168.1.2:82/?action=getswitch&id=3");
        int httpCodeSw3 = httpSw3.GET();
 
        if(httpCodeSw3 > 0) {
          String payloadSw3 = httpSw3.getString();
          if(payloadSw3.indexOf("two1") > 0){
            Serial.println("ON sw1");
            digitalWrite(D3, LOW);
          }
          if(payloadSw3.indexOf("two0") > 0){
            Serial.println("OFF sw3");
            digitalWrite(D3, HIGH);
          }
        }          
        httpSw3.end();
      }

      //kamera loft
      if (WiFi.status() == WL_CONNECTED) {
        HTTPClient httpSw1;
        httpSw1.begin("http://192.168.1.2:82/?action=getswitch&id=1");
        int httpCodeSw1 = httpSw1.GET();
 
        if(httpCodeSw1 > 0) {
          String payloadSw1 = httpSw1.getString();
          if(payloadSw1.indexOf("two1") > 0){
            Serial.println("ON sw1");
            digitalWrite(D5, LOW);
          }
          if(payloadSw1.indexOf("two0") > 0){
            Serial.println("OFF sw1");
            digitalWrite(D5, HIGH);
          }
        }          
        httpSw1.end();
      }

      //kamera front
      if (WiFi.status() == WL_CONNECTED) {
        HTTPClient httpSw2;
        httpSw2.begin("http://192.168.1.2:82/?action=getswitch&id=2");
        int httpCodeSw2 = httpSw2.GET();
 
        if(httpCodeSw2 > 0) {
          String payloadSw2 = httpSw2.getString();
          if(payloadSw2.indexOf("two1") > 0){
            Serial.println("ON sw2");
            digitalWrite(D4, HIGH);
          }
          if(payloadSw2.indexOf("two0") > 0){
            Serial.println("OFF sw2");
            digitalWrite(D4, LOW);
          }
        }          
        httpSw2.end();
      }

  } */
}
