#include <SPI.h>
#include <Wire.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <DHT.h>


const char* ssid = "velupapa";
const char* password = "lukas360";

#define DHTPIN D7
#define DHTTYPE DHT11
DHT dht(DHTPIN, DHTTYPE);
String temp, humidity;

static uint32_t timer;

int sw1ventilator = D6;
int sw2tlaciaren = D5;

void setup(void)
{
  Serial.begin(9600);  
  
  pinMode(sw1ventilator, OUTPUT);
  pinMode(sw2tlaciaren, OUTPUT);

  digitalWrite(sw1ventilator, HIGH);
  digitalWrite(sw2tlaciaren, LOW);
  delay(1000);
  dht.begin();

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println(WiFi.localIP());
}

void loop() {
  if (millis() > timer) {
    timer = millis() + 300000;
	
	  temp = dht.readTemperature();
    humidity = dht.readHumidity();

    if(isDigit(temp.toInt())){
      Serial.println(F("Opatovne loadujem teplotu.-------------------------------------------"));
      Serial.println(temp.toInt());
      delay(1000);  
      temp = dht.readTemperature();
      humidity = dht.readHumidity();
    }
    
    Serial.println("temp:"+temp);
    Serial.println("humidity:"+humidity);
	    
    if (WiFi.status() == WL_CONNECTED) {
      HTTPClient http;
      Serial.println(F("Nahravam teplomer"));
      http.begin("http://system.tronic.sk/?action=record&type1=16&val1="+temp+"&type2=17&val2="+humidity);
      http.GET();
      http.end();
    }
  
    if(temp.toInt()>35){
      Serial.print(F("Zapinam Ventilator"));
      digitalWrite(sw1ventilator, LOW);
    }else{
      Serial.print(F("Vypinam Ventilator"));
      digitalWrite(sw1ventilator, HIGH);
    }    

    if (WiFi.status() == WL_CONNECTED) {
      HTTPClient httpSw;
      httpSw.begin("http://system.tronic.sk/?action=getswitches&id1=21");
      int httpCodeSw = httpSw.GET();

      if(httpCodeSw > 0) {
        String val = httpSw.getString();

        if(val.indexOf("pastwo")>-1){
          String values = val.substring(val.indexOf("pastwo")+6);
          values = values.substring(0, values.indexOf("pastwo"));
          Serial.println(values);

          //sw2tlaciaren
          if(values.substring(0,1).indexOf("1") == 0){
            Serial.println(F("ON sw2tlaciaren"));
            digitalWrite(sw2tlaciaren, LOW);
          } else {
            digitalWrite(sw2tlaciaren, HIGH);
            Serial.println(F("OFF sw2tlaciaren"));
          }

        }
      }
      httpSw.end();
    }
  }
}
