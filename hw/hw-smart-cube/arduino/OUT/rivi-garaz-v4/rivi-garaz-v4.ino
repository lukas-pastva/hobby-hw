#include <EtherCard.h>
static byte mymac[] = { 0x74,0x69,0x69,0x2D,0x30,0x31 };
byte Ethernet::buffer[700];
static uint32_t timer;
const char website[] PROGMEM = "pastwo.ddns.net";

int SwitchCam = 13;
int FanCam = 14;

void setup () {
  Serial.begin(9600);
  
  pinMode(SwitchCam, OUTPUT);
  pinMode(FanCam, OUTPUT);
  
  ether.hisport = 82;
  if (ether.begin(sizeof Ethernet::buffer, mymac) == 0){
    Serial.println(F("Failed to access Ethernet controller"));
  }
  if (!ether.dhcpSetup()){
    Serial.println(F("DHCP failed"));
  }
  ether.printIp("IP:  ", ether.myip);
  ether.printIp("GW:  ", ether.gwip);
  ether.printIp("DNS: ", ether.dnsip);
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

  digitalWrite(FanCam, HIGH);
}

void loop () {
  ether.packetLoop(ether.packetReceive());
  if (millis() > timer) {
    timer = millis() + 5000;
    Serial.print("ahoj");
    ether.browseUrl(PSTR("/"), "index.php?action=getswitch&id=2", website, my_callback);
  }
}

static void my_callback (byte status, word off, word len) {
  Ethernet::buffer[off+600] = 0;
  String returnVal = (const char*) Ethernet::buffer + off;
  if(returnVal.indexOf("pastwo0pastwo") > 0){
    digitalWrite(SwitchCam, HIGH);
  }
  if(returnVal.indexOf("pastwo1pastwo") > 0){
    digitalWrite(SwitchCam, LOW);
  }      
}
