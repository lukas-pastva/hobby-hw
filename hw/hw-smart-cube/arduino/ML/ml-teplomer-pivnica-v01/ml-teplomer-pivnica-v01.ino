#include <Adafruit_Sensor.h>
#include <DHT.h>
//#include <DHT_U.h>

//#include <SPI.h>
//#include <Wire.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
//#include <DHT.h>


//const char* ssid = "TP-Link_708C";
//const char* password = "36683147";

const char* ssid = "east-side";
const char* password = "Lukas900.";

#define DHTPIN D4
#define DHTTYPE DHT21
DHT dht(DHTPIN, DHTTYPE);
String temp, humidity;
float tempFloat;
int ampers;

static uint32_t timer;
static uint32_t timerAmMeter;

int swFan = D8;
int sw240V = D7;
int swMain = D6;
int amMeter = A0;

void setup(void)
{
  Serial.begin(9600);  

  ampers  = 0;
  
  pinMode(swFan, OUTPUT);
  pinMode(swMain, OUTPUT);
  pinMode(sw240V, OUTPUT);
  pinMode(amMeter, INPUT);

  digitalWrite(swFan, HIGH);
  digitalWrite(swMain, HIGH);
  digitalWrite(sw240V, HIGH);
  
  delay(5000);
  dht.begin();

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println(WiFi.localIP());
}

void loop() {
  delay(5000);
  if (millis() > timerAmMeter) {
    timerAmMeter = millis() + 5000;
    delay(10000);
    
  }
    
  if (millis() > timer) {
    timer = millis() +600000;

    ampers = analogRead(A0);
    Serial.print(F("AmMeter:"));
    Serial.println(ampers);
  
	  tempFloat = dht.readTemperature();
    humidity = dht.readHumidity();


    if(isDigit(temp.toInt())){
      Serial.println(F("Opatovne loadujem teplotu.-------------------------------------------"));
      Serial.println(temp.toInt());
      delay(1000);  
      temp = dht.readTemperature();
      humidity = dht.readHumidity();
    }
    Serial.print(tempFloat);
    Serial.println(dht.readTemperature());
    Serial.println("humidity:"+humidity);
	    
    if (WiFi.status() == WL_CONNECTED) {
      HTTPClient http;
      Serial.println(F("Nahravam teplomer"));
      http.begin("http://system.tronic.sk/?action=record&hash=tvhpfgffuwaciuxqcfgszstqdoeeptvi&type1=18&val1="+temp+"&type2=19&val2="+humidity+"&type3=20&val3="+ampers);
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

    if (WiFi.status() == WL_CONNECTED) {
      HTTPClient httpSw;
      httpSw.begin("http://system.tronic.sk/?action=getswitches&id1=22&hash=tvhpfgffuwaciuxqcfgszstqdoeeptvi");
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
          } else {
            Serial.println(F("OFF swMain"));
            digitalWrite(swMain, LOW);            
          }

        }
      }
      httpSw.end();
    }
  }
}
