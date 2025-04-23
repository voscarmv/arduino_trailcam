/* A simple latency generator that sends ASCII "Hello\n" through the USB serial port from an arduino */
/* The idea is to use this framework to detect movement from the motion sensor connected to the arduino by polling every n sec */

void setup()
{
  Serial.begin(9600);
}

void loop()
{
  Serial.print("Hello\n");
  delay(1000);
}