#include <SPI.h>
#include <DHT.h>
#include <ESP8266WiFi.h>
#include <WiFiClient.h>

char server[] = "192.168.1.2";
const char* ssid = "east-side";
const char* password = "lukas360";

#define DHTPINroof D4 //teplomer roof
#define DHTPINloft D6 //teplomer loft
#define DHTTYPE DHT11
DHT dhtRoof(DHTPINroof, DHTTYPE);
DHT dhtLoft(DHTPINloft, DHTTYPE);
String tempRoof, humidityRoof, tempLoft, humidityLoft;
WiFiClient client;
static uint32_t timer;
boolean switchON = false;

void setup(void)
{
  Serial.begin(9600);
  dhtRoof.begin();
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
  if (millis() > timer) {
    timer = millis() + 5000;
    if (client.connect(server, 82)) {

      tempRoof = dhtRoof.readTemperature();
      humidityRoof = dhtRoof.readHumidity();
      tempLoft = dhtLoft.readTemperature();
      humidityLoft = dhtLoft.readHumidity();
      Serial.println("tempRoof:"+tempRoof);
      Serial.println("humidityRoof:"+humidityRoof);
      Serial.println("tempLoft:"+tempLoft);
      Serial.println("humidityLoft:"+humidityLoft);

      if(tempRoof.toInt()>25){
        digitalWrite(D2, HIGH);
      } else {
        digitalWrite(D2, LOW);
      }

      client.print("GET /?action=multi&type1=4&temp1="+tempRoof+"&humidity1="+humidityRoof+"&type2=3&temp2="+tempLoft+"&humidity2="+humidityLoft+"&id=1 HTTP/1.1\r\nHost: 192.168.1.2\r\nConnection: close\r\n\r\n");
      client.println();
      client.println();
      delay(10);

      while(client.available()){
        String line = client.readStringUntil('\r');
        if(line.indexOf("pastwo0") > 0){
          switchON = false;
        }
        if(line.indexOf("pastwo1") > 0){
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
