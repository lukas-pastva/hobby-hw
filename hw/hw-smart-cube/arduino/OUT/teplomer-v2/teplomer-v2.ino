#include <SPI.h>
#include <Ethernet.h>
#include <DHT.h>  
#include <ESP8266WiFi.h>  
#include <WiFiClient.h>  
#define DHTPIN D1
#define DHTTYPE DHT11 
DHT dht(DHTPIN, DHTTYPE);  
uint8_t temperature, humidity;  


EthernetClient client;
char server[] = "192.168.1.2";
const char* ssid = "east-side";
const char* password = "lukas360";

void setup(void)
{ 
  Serial.begin(9600);
  //Serial.begin(115200);  
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
}

void loop() {
  delay(5000);
  if (client.connect(server, 80)) {
    Serial.println("connected");
    client.println("GET /smart-home/?action=record&type=1&value=10 HTTP/1.1");
    client.println("Host: 192.168.1.2");
    client.println("Connection: close");
    client.println();    
  } else {
    Serial.println("connection failed");
  }
  /*
  if (client.available()) {
    char c = client.read();
    Serial.print(c);
  }

  // if the server's disconnected, stop the client:
  if (!client.connected()) {
    Serial.println();
    Serial.println("disconnecting.");
    client.stop();

    // do nothing forevermore:
    while (true);
  }
  */
  static boolean data_state = false;  
  temperature = dht.readTemperature();  
  humidity = dht.readHumidity();  
  Serial.print("Temperature Value is :");  
  Serial.print(temperature);  
  Serial.println("C");  
  Serial.print("Humidity Value is :");  
  Serial.print(humidity);  
  Serial.println("%");  
  delay(30000); // ThingSpeak will only accept updates every 15 seconds.  


}


