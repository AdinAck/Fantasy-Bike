#include <U8g2lib.h>
#include <Wire.h>
#include <SPI.h>

U8G2_SSD1322_NHD_256X64_F_4W_HW_SPI u8g2(U8G2_R0, /* cs=*/ 15, /* dc=*/ 9, /* reset=*/ 10);  // Enable U8G2_16BIT in u8g2.h

int w = 32;
int a = 1;
int s = millis()/1000;

#define slaveAddress 9

void setup() {
  u8g2.begin();
  u8g2.clearBuffer();
  u8g2.setFont(u8g2_font_profont17_mf);

  Serial.begin(9600);
  Wire.begin(4,5,slaveAddress);
  Wire.onReceive(receiveEvent);
}

void loop() {
}

void receiveEvent(size_t howMany) {

  (void) howMany;
  while (1 < Wire.available()) { // loop through all but the last
    byte c = Wire.read(); // receive byte as a character
    Serial.print(c);         // print the character
  }
  int x = Wire.read();    // receive byte as an integer
  Serial.println(x);         // print the integer
}
