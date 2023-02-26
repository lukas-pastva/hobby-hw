#include "TM1637.h"

TM1637 tm1637(8,9);

void setup(){
    Serial.begin(9600);
    delay(10);
    Serial.println("tuddd");
    tm1637.init();
    Serial.println("tusss");
    tm1637.set(BRIGHT_TYPICAL); 
    Serial.println("tudddssss");
    //BRIGHT_TYPICAL = 2,BRIGHT_DARKEST = 0,BRIGHTEST = 7;
 
    delay(1500);//Delay to let system boot
    Serial.println("tu");
}
 
void loop(){ 
  tm1637.display(1,2); 
  tm1637.display(2,4);
  tm1637.display(3,12);  // put a C at the end

  delay(3000);
}
