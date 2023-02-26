#include <SPI.h>
#include <DHT.h>  
#include <ESP8266WiFi.h>  
#include <WiFiClient.h> 

#define DHTPIN D4 //teplomer v podkrovi
#define DHTTYPE DHT11 
DHT dht(DHTPIN, DHTTYPE);  
String temp, humidity;  
WiFiClient clientTemp;
WiFiClient clientSwitch;
char server[] = "192.168.1.2";
const char* ssid = "east-side";
const char* password = "lukas360";

void setup(void)
{ 
  Serial.begin(9600);
  dht.begin();  
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
  pinMode(D3, OUTPUT);
}

void loop() {  
  boolean camON = false;
  if (clientSwitch.connect(server, 82)) {        
    //zisti hodnotu vypinaca
    clientSwitch.print("GET /?action=getswitch&id=1 HTTP/1.1\r\nHost: 192.168.1.2\r\nConnection: close\r\n\r\n");
    clientSwitch.println();
    clientSwitch.println();
    delay(10);    
    while(clientSwitch.available()){
      String line = clientSwitch.readStringUntil('\r');
      if(line.indexOf(">>>0<<<") > 0){        
        camON = false;
      }
      if(line.indexOf(">>>1<<<") > 0){        
        camON = true;
      }
    }

    if(camON){
      Serial.println("zapinam");
      digitalWrite(D3, HIGH);
    }else{
      Serial.println("vypinam");
      digitalWrite(D3, LOW);
    }
  }

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
  delay(300000);
  //delay (5000);
  
}

