#include <SPI.h>
#include <Wire.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
//#include <DHT.h>


const char* ssid = "velupapa";
const char* password = "lukas360";

//#define DHTPIN D4
//#define DHTTYPE DHT22
//DHT dht(DHTPIN, DHTTYPE);
//String temp, humidity;
//int ampers;

static uint32_t timer;
//static uint32_t timerAmMeter;

//int swFan = D8;
int sw240V = D7;
int swMain = D6;
//int amMeter = A0;
int stopBtn = D5;
int stopBtnVal = 0;

void setup(void)
{
  Serial.begin(9600);  

  //ampers  = 0;
  
  //pinMode(swFan, OUTPUT);
  pinMode(swMain, OUTPUT);
  pinMode(sw240V, OUTPUT);
  //pinMode(amMeter, INPUT);
  pinMode(stopBtn, INPUT);

  //digitalWrite(swFan, HIGH);
  digitalWrite(swMain, HIGH);
  digitalWrite(sw240V, HIGH);
  
  delay(5000);
  //dht.begin();

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println(WiFi.localIP());
}

void loop() {

  //stop button
  stopBtnVal = digitalRead(stopBtn);
     
  if (stopBtnVal == HIGH) {    
    digitalWrite(swMain, LOW);            
    digitalWrite(sw240V, LOW); 
    Serial.println("Shutting down.");
    delay(1000);
  }

  /*if (millis() > timerAmMeter) {
    timerAmMeter = millis() + 5000;
    delay(10000);    
  }*/
    
  if (millis() > timer) {
    timer = millis() +6000;

    /*ampers = analogRead(A0);
    Serial.print(F("AmMeter:"));
    Serial.println(ampers);
  
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
      http.begin("http://system.tronic.sk/?action=record&type1=18&val1="+temp+"&type2=19&val2="+humidity+"&type3=20&val3="+ampers);
      http.GET();
      http.end();
    }
  
    if(temp.toInt()>35){
      Serial.print(F("ON swFan"));
      digitalWrite(swFan, LOW);
    }else{
      Serial.print(F("OFF swFan"));
      digitalWrite(swFan, HIGH);
    }
    */

    if (WiFi.status() == WL_CONNECTED) {
      HTTPClient httpSw;
      httpSw.begin("http://system.tronic.sk/?action=getswitches&id1=24");
      int httpCodeSw = httpSw.GET();

      if(httpCodeSw > 0) {
        String val = httpSw.getString();

        if(val.indexOf("pastwo")>-1){
          String values = val.substring(val.indexOf("pastwo")+6);
          values = values.substring(0, values.indexOf("pastwo"));
          Serial.println(values);

          //swMain
          if(values.substring(0,1).indexOf("1") == 0){
            Serial.println(F("ON swMain"));
            digitalWrite(swMain, HIGH);
            digitalWrite(sw240V, HIGH);
          } else {
            Serial.println(F("OFF swMain"));
            digitalWrite(swMain, LOW);            
            digitalWrite(sw240V, LOW); 
          }

        }
      }
      httpSw.end();
    }
  }
}
