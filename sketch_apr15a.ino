int sensorpir = 12;

void setup()
{
  pinMode(sensorpir, INPUT); 
  Serial.begin(9600);
}

void loop()
{
 if(digitalRead(sensorpir) == HIGH) // This polls the sensor every cycle
  { 
   Serial.print("Movement detected\n"); // Send this if the sensor detects movement
   delay(1000); // Then wait a little while
  }
}
