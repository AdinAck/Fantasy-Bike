// Wire Slave Receiver
// by Nicholas Zambetti <http://www.zambetti.com>

// Demonstrates use of the Wire library
// Receives data as an I2C/TWI slave device
// Refer to the "Wire Master Writer" example for use with this

// Created 29 March 2006

// This example code is in the public domain.


#include <Wire.h>

String c;

void setup() {
  Wire.begin(8);                // join i2c bus with address #8
  Wire.onReceive(receiveEvent); // register event
  Serial.begin(9600);           // start serial for output
}

void receiveEvent() {
  while (Wire.available()) {
    c = Wire.read();
    Serial.print("In: ");
    Serial.println(c);

    if (c == String(67)) {
      Rectangle();
    }else {
      Serial.println("Received invalid/unknown bytes.");
    }
  }
}

void Rectangle() {
  int x = Wire.read();
  int y = Wire.read();
  int w = Wire.read();
  int h = Wire.read();
  Serial.println(x);
  Serial.println(y);
  Serial.println(w);
  Serial.println(h);
  Serial.println("Transmission complete.");
}

void loop() {
}
