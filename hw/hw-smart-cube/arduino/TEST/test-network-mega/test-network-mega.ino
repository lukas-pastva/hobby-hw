#include <EtherCard.h>

static byte mymac[] = { 0x74,0x69,0x69,0x2D,0x30,0x32};
byte Ethernet::buffer[700];
static uint32_t timer;

const char website[] PROGMEM = "system.tronic.sk";

static void my_callback (byte status, word off, word len) {
  Ethernet::buffer[off+600] = 0;
  String returnVal = (const char*) Ethernet::buffer + off;
  Serial.println(returnVal);      
}

void setup () {
  Serial.begin(57600);
  ether.hisport = 82;
  Serial.println(F("startijeeem"));
  if (ether.begin(sizeof Ethernet::buffer, mymac) == 0) 
    Serial.println(F("Failed to access Ethernet controller"));
  if (!ether.dhcpSetup())
    Serial.println(F("DHCP failed"));
  
  ether.printIp("IP:  ", ether.myip);  ether.printIp("GW:  ", ether.gwip); ether.printIp("DNS: ", ether.dnsip);  
 
#if 1
  if (!ether.dnsLookup(website))
    Serial.println("DNS failed");
#elif 2
  char websiteIP[] = "192.168.1.1";
  ether.parseIp(ether.hisip, websiteIP);
#else
  byte hisip[] = { 192,168,1,1 };
  ether.copyIp(ether.hisip, hisip);
#endif
    
  ether.printIp("SRV: ", ether.hisip);
}

void loop () {
  ether.packetLoop(ether.packetReceive());  
  if (millis() > timer) {
    timer = millis() + 5000;
    ether.browseUrl(PSTR("/index.php"), "?action=getswitch&id=7", website, my_callback);
  }
}
