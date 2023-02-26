#include <UIPEthernet.h>
EthernetClient client;
signed long next;


#define MACADDRESS 0x00,0x01,0x02,0x03,0x04,0x05
#define MYIPADDR 192,168,1,31
#define MYIPMASK 255,255,255,0
#define MYDNS 192,168,1,1
#define MYGW 192,168,1,1

uint8_t mac[6] = {MACADDRESS};
uint8_t myIP[4] = {MYIPADDR};
uint8_t myMASK[4] = {MYIPMASK};
uint8_t myDNS[4] = {MYDNS};
uint8_t myGW[4] = {MYGW};

void setup() {
  Serial.begin(9600);
  Serial.println("Starting..");
  
  //Ethernet.begin(mac,myIP,myDNS,myGW,myMASK);
  Ethernet.begin(mac);
  Serial.println("www1.2");
  Serial.println(Ethernet.localIP());
  Serial.println(Ethernet.subnetMask());
  Serial.println("www1.5");
  Serial.println(Ethernet.gatewayIP());
  Serial.println(Ethernet.dnsServerIP());
  next = 0;
  Serial.println("www2");
}

void loop() {
  if (((signed long)(millis() - next)) > 0)  {
    Serial.println("www3");
    next = millis() + 5000;
    Serial.println("Client connect");
    // replace hostname with name of machine running tcpserver.pl
    //if (client.connect("server.local",5000))
    if (client.connect(IPAddress(192, 168, 1, 2), 82)) {
      Serial.println("Client connected");
      client.println("DATA from Client");
      int size;
      while ((client.available() == 0) && (millis() < next)) {
        //#if defined(ESP8266)
        //wdt_reset();
        //#endif
      }
      while ((size = client.available()) > 0) {
        uint8_t* msg = (uint8_t*)malloc(size + 1);
        memset(msg, 0, size + 1);
        size = client.read(msg, size);
        free(msg);
      }
      Serial.println("Client disconnect");
      client.stop();
    }
    else {
      Serial.println("Client connect failed");
    }
  }
}

