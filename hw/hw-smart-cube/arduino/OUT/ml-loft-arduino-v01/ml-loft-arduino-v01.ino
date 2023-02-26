#include <EtherCard.h>
#include <DHT.h>
#include <Wire.h> 
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x3F, 16, 2);

static byte mymac[] = { 0x47,0x69,0x69,0x2D,0x30,0x21 };
static byte myip[] = { 192,168,1,151 };
static byte gwip[] = { 192,168,1,1 };
static byte hisip[] = { 192,168,1,2 };

byte Ethernet::buffer[300];
static uint32_t timer;
const char website[] PROGMEM = "pastwo.ddns.net";

#define DHTTYPE DHT11
DHT dhtVonku(9, DHTTYPE);
DHT dhtLoft(10, DHTTYPE);
String tempVonku;
String tempLoft;
 
int switch1 = 2;
int switch2 = 3;
int switch3 = 4;
int switch4 = 5;
int switch5Svetla = 6;
int switch6CamLoft = 7;
int switch7CamVonku = 8;
int switch8Fan = 9;

void setup () {
  Serial.begin(9600);
  delay(10);

  Serial.println("Starting...");
  
  lcd.begin();   
  lcd.backlight();
  lcd.print("Starting");  
  lcd.setCursor ( 0, 1 );
  //lcd.print ("...");
  delay(2000);
  
  pinMode(switch1, OUTPUT);
  pinMode(switch2, OUTPUT);
  pinMode(switch3, OUTPUT);
  pinMode(switch4, OUTPUT);
  pinMode(switch5Svetla, OUTPUT);
  pinMode(switch6CamLoft, OUTPUT);
  pinMode(switch7CamVonku, OUTPUT);
  pinMode(switch8Fan, OUTPUT);

  digitalWrite(switch1, HIGH);
  digitalWrite(switch2, HIGH);
  digitalWrite(switch3, HIGH);
  digitalWrite(switch4, HIGH);
  digitalWrite(switch5Svetla, HIGH);
  digitalWrite(switch6CamLoft, HIGH);
  digitalWrite(switch7CamVonku, HIGH);
  digitalWrite(switch8Fan, HIGH);
  
  ether.hisport = 82;
  if (ether.begin(sizeof Ethernet::buffer, mymac, 10) == 0){
    Serial.println(F("Failed to access Ethernet controller"));
  }
  ether.staticSetup(myip, gwip);


  //if (!ether.dhcpSetup())
  //{
    //Serial.println("Failed to get configuration from DHCP");
    //while(1);
  //}
  //else
    //Serial.println("DHCP configuration done");

  //if (!ether.dnsLookup(website))
  //{
    //Serial.println("DNS failed");
    //while(1);
  //}
  //else 
    //Serial.println("DNS resolution done"); 

  ether.copyIp(ether.hisip, hisip);
  ether.printIp("SRV IP:\t", ether.hisip);
  ether.printIp("My IP: ", ether.myip);
  //ether.printIp("Server: ", ether.hisip);

  //while (ether.clientWaitingGw())
    //ether.packetLoop(ether.packetReceive());
  //Serial.println("Gateway found");

  dhtVonku.begin(); 
  dhtLoft.begin(); 

  lcd.setCursor (0, 0);
  lcd.print("Connected");  
  delay(2000);
  //lcd.print ("ip:"+ether.myip);
}

void loop () { 
  ether.packetLoop(ether.packetReceive());
  
  if (millis() > timer) {
    timer = millis() + (5000);
    
    tempVonku = dhtVonku.readTemperature();
    tempLoft = dhtLoft.readTemperature();
    Serial.println("tempVonku: "+tempVonku);
    Serial.println("tempLoft: "+tempLoft);

    lcd.setCursor (0, 0);
    lcd.print("tmp out:"+ tempVonku);  
    lcd.setCursor ( 0, 1 );
    lcd.print("tmp loft:"+ tempLoft);  
    
    char buff[128]="";
    sprintf (buff, "index.php?action=multi&type1=3&temp1=%d&humidity1=%d&type2=1&temp2=%d&humidity2=%d&id=7", (int)dhtLoft.readTemperature(), (int)dhtLoft.readHumidity(), (int)dhtVonku.readTemperature(), (int)dhtVonku.readHumidity() );

    ether.browseUrl(PSTR("/"), buff, website, my_callback);    
    if(tempLoft.toInt()>27){
      digitalWrite(switch8Fan, HIGH);
    } else {
      digitalWrite(switch8Fan, LOW);
    }
  }
}

void my_callback(byte status, word off, word len) {
   char * buff;   
   Ethernet::buffer[off+len] = 0;
   buff = strtok((char*) Ethernet::buffer + off, "#");
   Serial.println("parstujem kameru");

   //Serial.println(buff);
   char *s;
   s = strstr(buff, "pastwo1pastwo");
   if (s != NULL){
     Serial.println("zapinam kameru");
     digitalWrite(switch6CamLoft, HIGH);
   }else{
     digitalWrite(switch6CamLoft, LOW);
     Serial.println("vypinam kameru");
   }   
}
