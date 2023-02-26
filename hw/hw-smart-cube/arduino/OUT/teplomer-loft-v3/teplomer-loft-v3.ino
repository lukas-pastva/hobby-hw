#include <SPI.h>
#include <DHT.h>  
#include <ESP8266WiFi.h>  
#include <WiFiClient.h> 
//TEPLOMER V PODKROVI 
#define DHTPIN D4
//#define DHTPIN D5
#define DHTTYPE DHT11 
DHT dht(DHTPIN, DHTTYPE);  
String temp, humidity;  
WiFiClient client;
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
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println(WiFi.localIP());

  //toto je vetrak
  pinMode(D2, OUTPUT);
  //toto je kamera
  pinMode(D3, OUTPUT);
}

void loop() {
  static boolean data_state = false;  
  temp = dht.readTemperature();  
  humidity = dht.readHumidity();  
  //Serial.print("Temperature Value is :"+temp+"C, Humidity Value is :"+humidity+"%");  
  
  if (client.connect(server, 82)) {        
    //zisti hodnotu vypinaca
    /*client.print("GET /?action=getswitch&id=1 HTTP/1.1\r\nHost: 192.168.1.2\r\nConnection: close\r\n\r\n");
    client.println();
    client.println();
    delay(10);   

    boolean camON = false;
    
    while(client.available()){
      String line = client.readStringUntil('\r');
      //Serial.print('...');
      //Serial.print(line.lastIndexOf('>>>'));
      //Serial.print(line.lastIndexOf('<<<'));
      //Serial.print('...');
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
    }*/
    //nahraj teplotu
    //delay(5000);  
    client.print("GET /?action=record&type=4&temp="+temp+"&humidity="+humidity+" HTTP/1.1\r\nHost: 192.168.1.2\r\nConnection: close\r\n\r\n");
    client.println();
    client.println();
    delay(10);   
    
    if(temp.toInt()>25){
      digitalWrite(D2, HIGH);
    } else {
      digitalWrite(D2, LOW);
    }
  } else {
    Serial.println("connection failed");
  }
  delay(300000);
  //delay (5000);
}

