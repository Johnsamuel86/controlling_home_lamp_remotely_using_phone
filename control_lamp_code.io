int switch1=11;
int Received;
int switch1_state=0;

void setup(){
  
  Serial.begin(9600);
  pinMode(switch1,OUTPUT);  
  
}

void loop(){
 
 if(Serial.available()>0)
 { 
    Received = Serial.read();
    
 }

////////////////switch1/////////////////////

if (switch1_state == 0 && Received == '1')
  {
    digitalWrite(switch1,LOW);
    switch1_state=1; 
  }
if (switch1_state ==1 && Received == '0')
  {
    digitalWrite(switch1,HIGH);
    switch1_state=0;
  }
}