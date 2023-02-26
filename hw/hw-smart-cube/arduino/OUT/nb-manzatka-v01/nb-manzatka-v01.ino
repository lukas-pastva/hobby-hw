#include <SPI.h>
#include <Wire.h>
//#include <ESP8266WiFi.h>
//#include <ESP8266HTTPClient.h>
#include "TM1637.h"
//#include <DHT.h>
//#include <math.h>

TM1637 tm1637(6,7);
/*
char server[] = "192.168.1.2";
const char* ssid = "ZTE-HU2RA5";
const char* password = "2gb6ejudgu5c";

WiFiClient clientRecord;
*/
static uint32_t timer;

bool switchFan = false;
bool switchCam = false;
bool switchCamSystem = false;
bool switchMon = false;
//#define DHTPIN D8
//#define DHTTYPE DHT11
//DHT dht(DHTPIN, DHTTYPE);
String temp, humidity;

void setup(void)
{
  Serial.begin(9600);
  delay(10);
  
  //dht.begin();
  
  tm1637.init();
  tm1637.set(2); 
  //BRIGHT_TYPICAL = 2,BRIGHT_DARKEST = 0,BRIGHTEST = 7;
 
  delay(1500);
  /*
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println(WiFi.localIP());
  */
  pinMode(D1, OUTPUT);
  pinMode(D2, OUTPUT);
  pinMode(D3, OUTPUT);
  pinMode(D4, OUTPUT);  

  digitalWrite(D1, HIGH);
  digitalWrite(D2, HIGH);
  digitalWrite(D3, HIGH);
  digitalWrite(D4, HIGH);
    
}

void loop() {   
  
  if (millis() > timer) {
    timer = millis() + 3000;
/*
    temp = dht.readTemperature();
    humidity = dht.readHumidity();
    Serial.println("temp:"+temp);
    Serial.println("humidity:"+humidity);

    if(temp.toInt()>25){    
      Serial.print("Zapinam Ventilator");
      digitalWrite(D1, HIGH);
    } else {
      Serial.print("Vypinam Ventilator");
      digitalWrite(D1, LOW);
    }
  */  
    //tm1637.display(1,2); 
    //tm1637.display(2,4);
    //tm1637.display(3,12);  // put a C at the end
    /*
    if (WiFi.status() == WL_CONNECTED) {
      HTTPClient http;
      http.begin("http://pastwo.ddns.net:82/?action=multi&type1=4&temp1="+temp+"&humidity1="+humidity);
      http.GET();
      http.end();
    }

    //kamerovy system
    if (WiFi.status() == WL_CONNECTED) {
        HTTPClient httpSw1;
        httpSw1.begin("http://pastwo.ddns.net:82/?action=getswitch&id=10");
        int httpCodeSw1 = httpSw1.GET();
 
        if(httpCodeSw1 > 0) {
          String payloadSw1 = httpSw1.getString();
          if(payloadSw1.indexOf("two1") > 0){
            digitalWrite(D4, HIGH);
          }
          if(payloadSw1.indexOf("two0") > 0){
            digitalWrite(D4, LOW);
          }
        }          
        httpSw1.end();
    }
*/
    //monitor
   /* if (WiFi.status() == WL_CONNECTED) {
        HTTPClient httpSw2;
        httpSw2.begin("http://pastwo.ddns.net:82/?action=getswitch&id=9");
        int httpCodeSw2 = httpSw2.GET();
 
        if(httpCodeSw2 > 0) {
          String payloadSw2 = httpSw2.getString();
          if(payloadSw2.indexOf("two1") > 0){
            digitalWrite(D3, LOW);
          }
          if(payloadSw2.indexOf("two0") > 0){
            digitalWrite(D3, HIGH);
          }
        }          
        httpSw2.end();
    }

    //kamera trasa
    if (WiFi.status() == WL_CONNECTED) {
        HTTPClient httpSw3;
        httpSw3.begin("http://pastwo.ddns.net:82/?action=getswitch&id=8");
        int httpCodeSw3 = httpSw3.GET();
 
        if(httpCodeSw3 > 0) {
          String payloadSw3 = httpSw3.getString();
          if(payloadSw3.indexOf("two1") > 0){
            digitalWrite(D2, HIGH);
          }
          if(payloadSw3.indexOf("two0") > 0){
            digitalWrite(D2, LOW);
          }
        }          
        httpSw3.end();
    }*/
  }
}

