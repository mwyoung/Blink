//Blink - turns on LED on Arduino, modified from Arduino's Blink.ino
//Changed by Miles Young
#define LED 13
#define DELAY 5000

// the setup routine runs once when you press reset:
void setup() {
  // initialize the digital pin as an output.
  pinMode(LED, OUTPUT);
}

// the loop routine runs over and over again forever:
void loop() {
  digitalWrite(LED, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(DELAY);               // wait for a second
  digitalWrite(LED, LOW);    // turn the LED off by making the voltage LOW
  delay(DELAY);               // wait for a second
}
