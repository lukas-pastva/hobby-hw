#include <SPI.h>
#include <DHT.h>
#include <ESP8266WiFi.h>
#include <WiFiClient.h>

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
WiFiClient client;
static uint32_t timer;
boolean switchON = false;

void setup(void)
{
  Serial.begin(9600);
  dhtRoof.begin();
  dhtLoft.begin();
  dhtOut.begin();
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
  if (millis() > timer) {
    timer = millis() + 300000;
    if (client.connect(server, 82)) {

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

      client.print("GET /?action=multi&type1=4&temp1="+tempRoof+"&humidity1="+humidityRoof+"&type2=3&temp2="+tempLoft+"&humidity2="+humidityLoft+"&type3=1&temp3="+tempOut+"&humidity3="+humidityOut+"&id=1 HTTP/1.1\r\nHost: 192.168.1.2\r\nConnection: close\r\n\r\n");
      client.println();
      client.println();
      delay(10);

      while(client.available()){
        String line = client.readStringUntil('\r');
        if(line.indexOf("two0") > 0){
          switchON = false;
        }
        if(line.indexOf("two1") > 0){
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
}
