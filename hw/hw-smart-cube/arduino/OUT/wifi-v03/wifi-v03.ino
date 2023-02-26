#include "ESP8266WiFi.h"

// WiFi parameters to be configured
const char* ssid = "east-side";
const char* password = "lukas360";
WiFiClient client;

void setup(void)
{ 
  Serial.begin(9600);
  // Connect to WiFi
  WiFi.begin(ssid, password);

  // while wifi not connected yet, print '.'
  // then after it connected, get out of the loop
  while (WiFi.status() != WL_CONNECTED) {
     delay(500);
     Serial.print(".");
  }
  //print a new line, then print WiFi connected and the IP address
  Serial.println("");
  Serial.println("WiFi connected");
  // Print the IP address
  Serial.println(WiFi.localIP());

  byte server[] = { 80, 94, 55, 175 };
  if (client.connect(server, 82)) {
    client.println("GET /smart-home/?action=record&type=1&temp=22 HTTP/1.0");  
    client.println();
    delay(5000);
  }
  client.stop();
 
}
void loop() {  
   if (client.available()) {
    char c = client.read();
    Serial.print(c);
  }

  if (!client.connected()) {
    Serial.println();
    Serial.println("disconnecting.");
    client.stop();
    for(;;)
      ;
  }
}



