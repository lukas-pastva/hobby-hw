#include <SPI.h>
#include <DHT.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

char server[] = "192.168.1.2";
const char* ssid = "velupapa";
const char* password = "lukas360";

#define DHTPINroof D4 //teplomer roof
#define DHTPINloft D6 //teplomer loft
#define DHTPINout D7 //teplomer out
#define DHTTYPE DHT11
DHT dhtRoof(DHTPINroof, DHTTYPE);
DHT dhtLoft(DHTPINloft, DHTTYPE);
DHT dhtOut(DHTPINout, DHTTYPE);
String tempRoof, humidityRoof, tempLoft, humidityLoft, tempOut, humidityOut;
static uint32_t timer;
static uint32_t timerSwitches;

void setup(void)
{
  Serial.begin(9600);
  dhtRoof.begin();
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
  pinMode(D1, OUTPUT);
  //toto je vetrak
  pinMode(D2, OUTPUT);
  //toto je kamera
  pinMode(D3, OUTPUT);
  
}

void loop() {
  if (millis() > timer) {
    timer = millis() + 300000;

      tempRoof = dhtRoof.readTemperature();
      humidityRoof = dhtRoof.readHumidity();
      tempLoft = dhtLoft.readTemperature();
      humidityLoft = dhtLoft.readHumidity();
      tempOut = dhtOut.readTemperature();
      humidityOut = dhtOut.readHumidity();
      Serial.println("tempRoof:"+tempRoof);
      Serial.println("humidityRoof:"+humidityRoof);
      Serial.println("tempLoft:"+tempLoft);
      Serial.println("humidityLoft:"+humidityLoft);
      Serial.println("tempOut:"+tempOut);
      Serial.println("humidityOut:"+humidityOut);

      if(tempRoof.toInt()>25){
        digitalWrite(D2, HIGH);
      } else {
        digitalWrite(D2, LOW);
      }
      
      if (WiFi.status() == WL_CONNECTED) {
        HTTPClient http;
        http.begin("http://192.168.1.2:82/?action=multi&type1=4&temp1="+tempRoof+"&humidity1="+humidityRoof+"&type2=3&temp2="+tempLoft+"&humidity2="+humidityLoft+"&type3=1&temp3="+tempOut+"&humidity3="+humidityOut);
        http.GET();
        http.end();
      } 
  }    

  if (millis() > timerSwitches) {
    timerSwitches = millis() + 5000;
    if (WiFi.status() == WL_CONNECTED) {
        HTTPClient httpSw3;
        httpSw3.begin("http://192.168.1.2:82/?action=getswitch&id=1");
        int httpCodeSw3 = httpSw3.GET();
 
        if(httpCodeSw3 > 0) {
          String payloadSw3 = httpSw3.getString();
          if(payloadSw3.indexOf("two1") > 0){
            Serial.println("zapinam sw3");
            digitalWrite(D3, LOW);
          }
          if(payloadSw3.indexOf("two0") > 0){
            Serial.println("vypinam sw3");
            digitalWrite(D3, HIGH);
          }
        }          
        httpSw3.end();
      } 

      if (WiFi.status() == WL_CONNECTED) {
        HTTPClient httpSw1;
        httpSw1.begin("http://192.168.1.2:82/?action=getswitch&id=4");
        int httpCodeSw1 = httpSw1.GET();
 
        if(httpCodeSw1 > 0) {
          String payloadSw1 = httpSw1.getString();
          if(payloadSw1.indexOf("two1") > 0){
            Serial.println("zapinam sw1");
            digitalWrite(D1, HIGH);
          }
          if(payloadSw1.indexOf("two0") > 0){
            Serial.println("vypinam sw1");
            digitalWrite(D1, LOW);
          }
        }          
        httpSw1.end();
      }
  } 
}
