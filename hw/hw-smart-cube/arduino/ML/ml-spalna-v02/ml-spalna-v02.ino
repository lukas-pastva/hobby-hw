static uint32_t timerOff;

int swRF = 6;
int swRelay = 5;

void setup () {
  Serial.begin(9600);
  delay(10);

  timerOff = 10000;

  //pinMode(swRF, OUTPUT);
  pinMode(swRelay, OUTPUT);

  Serial.println(F("Hned zapnm rele"));
  //digitalWrite(swRF, LOW);
  digitalWrite(swRelay, LOW);  
}

void loop () {
  if (millis() > timerOff) {
    //vypnem system
    digitalWrite(swRelay, HIGH);  
  }
}
