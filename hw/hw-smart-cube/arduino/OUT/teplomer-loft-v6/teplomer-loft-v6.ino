#include <SPI.h>
#include <DHT.h>
#include <ESP8266WiFi.h>
#include <WiFiClient.h>

char server[] = "192.168.1.2";
const char* ssid = "east-side";
const char* password = "lukas360";

#define DHTPIN D4 //teplomer roof
#define DHTPINloft D6 //teplomer loft
#define DHTTYPE DHT11
DHT dht(DHTPIN, DHTTYPE);
DHT dhtLoft(DHTPINloft, DHTTYPE);
String temp, humidity;
String tempLoft, humidityLoft;
WiFiClient clientTemp;
WiFiClient clientTempLoft;
static uint32_t timerTemp;

WiFiClient clientSwitch;
static uint32_t timerSwitch;
boolean switchON = false;

void setup(void)
{
  Serial.begin(9600);
  dht.begin();
  dhtLoft.begin();
  delay(10);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("WiFi connected");
  Serial.println(WiFi.localIP());

  //toto je vetrak
  pinMode(D2, OUTPUT);
  //toto je kamera
  pinMode(D6, OUTPUT);
}

void loop() {
  if (millis() > timerSwitch) {
    timerSwitch = millis() + 5000;
    Serial.println("timer Switch");
    if (clientSwitch.connect(server, 82)) {
      //zisti hodnotu vypinaca
      clientSwitch.print("GET /?action=getswitch&id=1 HTTP/1.1\r\nHost: 192.168.1.2\r\nConnection: close\r\n\r\n");
      clientSwitch.println();
      clientSwitch.println();
      delay(10);
      while(clientSwitch.available()){
        String line = clientSwitch.readStringUntil('\r');
        if(line.indexOf("pastwo0pastwo") > 0){
          switchON = false;
        }
        if(line.indexOf("pastwo1pastwo") > 0){
          switchON = true;
        }
      }

      if(switchON){
        Serial.println("zapinam");
        digitalWrite(D3, HIGH);
      }else{
        Serial.println("vypinam");
        digitalWrite(D3, LOW);
      }
    }
  }
  if (millis() > timerTemp) {
    timerTemp = millis() + 300000;

    Serial.println("timer Temp");

    if (clientTemp.connect(server, 82)) {
      temp = dht.readTemperature();
      humidity = dht.readHumidity();
      clientTemp.print("GET /?action=record&type=4&temp="+temp+"&humidity="+humidity+" HTTP/1.1\r\nHost: 192.168.1.2\r\nConnection: close\r\n\r\n");
      clientTemp.println();
      clientTemp.println();
      delay(10);
      if(temp.toInt()>25){
        digitalWrite(D2, HIGH);
      } else {
        digitalWrite(D2, LOW);
      }
    }
    
    //Temp loft
    tempLoft = dhtLoft.readTemperature();
    humidityLoft = dhtLoft.readHumidity();
    Serial.println("tempLoft:"+tempLoft);
    Serial.println("humidityLoft:"+humidityLoft);
    if (clientTempLoft.connect(server, 82)) {      
      clientTempLoft.print("GET /?action=record&type=3&temp="+tempLoft+"&humidity="+humidityLoft+" HTTP/1.1\r\nHost: 192.168.1.2\r\nConnection: close\r\n\r\n");
      clientTempLoft.println();
      clientTempLoft.println();
      delay(10);
    }
  }
}

