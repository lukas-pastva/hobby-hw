#include <VirtualWire.h>
#include <EasyTransferVirtualWire.h>

EasyTransferVirtualWire ET; 

struct SEND_DATA_STRUCTURE{
  int16_t blinks;
  int16_t pause;
};
SEND_DATA_STRUCTURE mydata;

void setup(){
    Serial.begin(57600);
  ET.begin(details(mydata));
  //vw_set_ptt_inverted(true);
  vw_set_rx_pin(3);
  vw_setup(2000);
  vw_rx_start();
  randomSeed(analogRead(0));
}

void loop(){
  if(ET.receiveData()){ 
    Serial.println(mydata.blinks);
    Serial.println(mydata.pause);
  }else{
    Serial.print(F("."));
  }
  delay(250);
}
