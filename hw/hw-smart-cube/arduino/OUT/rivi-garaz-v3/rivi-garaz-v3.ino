static uint32_t timer;
bool value = false;

void setup () {
  Serial.begin(9600);
  pinMode(8, OUTPUT);
}

void loop () {
  if (millis() > timer) {
    timer = millis() + 5000;
    if(value){
      digitalWrite(8, LOW);
      value = false;
    }else{
      digitalWrite(8, HIGH);
      value = true;
    } 
      
  }

}

