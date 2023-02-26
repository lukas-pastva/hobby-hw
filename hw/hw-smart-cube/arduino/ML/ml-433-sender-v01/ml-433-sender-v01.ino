#include <VirtualWire.h>
#include <EasyTransferVirtualWire.h>

EasyTransferVirtualWire ET; 

struct SEND_DATA_STRUCTURE{
  int16_t blinks;
  int16_t pause;
};
SEND_DATA_STRUCTURE mydata;

void setup(){

  ET.begin(details(mydata));
  //vw_set_ptt_inverted(true);
  vw_set_tx_pin(2);
  vw_setup(2000);  
  pinMode(13, OUTPUT);  
  randomSeed(analogRead(0));
}

void loop(){
  mydata.blinks = 12;
  mydata.pause = 257;
  ET.sendData();  
  delay(5000);
}
