#include "ESP8266WiFi.h"
#include <SPI.h>
#include <Ethernet.h>

EthernetClient client;
char server[] = "192.168.1.2";
const char* ssid = "east-side";
const char* password = "lukas360";

void setup(void)
{ 
  Serial.begin(9600);
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
}

