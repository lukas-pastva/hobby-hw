int switch7 = 7;
int switch8 = 8;
int switch11 = 11;
int switch12 = 12;
int switch13 = 13;


void setup () {
  Serial.begin(9600);
  delay(10);

  Serial.println("Starting...");

  //pinMode(switch7, OUTPUT);
  //pinMode(switch8, OUTPUT);
  //pinMode(switch11, OUTPUT);
  pinMode(switch12, OUTPUT);
  pinMode(switch13, OUTPUT);


  //digitalWrite(switch7, LOW);
  //digitalWrite(switch8, LOW);
  //digitalWrite(switch11, LOW);
  digitalWrite(switch12, LOW);
  digitalWrite(switch13, LOW);

  Serial.println("done");
  
}

void loop () { 
 
}

