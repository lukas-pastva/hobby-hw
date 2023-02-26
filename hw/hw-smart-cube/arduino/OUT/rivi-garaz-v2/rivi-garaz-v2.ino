/*
 * UIPEthernet EchoServer example.
 * This Hello World example sets up a server at 192.168.1.6 on port 1000.
 * Telnet here to access the service.  The uIP stack will also respond to
 * pings to test if you have successfully established a TCP connection to
 * the Arduino.
 */

#include <UIPEthernet.h>
// The connection_data struct needs to be defined in an external file.
#include <UIPServer.h>
#include <UIPClient.h>

EthernetServer server = EthernetServer(1000);

void setup()
{
  Serial.begin(9600);

  uint8_t mac[6] = {0x00,0x01,0x02,0x03,0x04,0x05};
  IPAddress myIP(192,168,1,116);

  Ethernet.begin(mac,myIP);

  server.begin();
}

void loop()
{
  size_t size;

  if (EthernetClient client = server.available())
    {
      if (client)
        {
          while((size = client.available()) > 0)
            {
              uint8_t* msg = (uint8_t*)malloc(size);
              size = client.read(msg,size);
              Serial.write(msg,size);
              client.write(msg,size);
              free(msg);
            }
        }
    }
}
