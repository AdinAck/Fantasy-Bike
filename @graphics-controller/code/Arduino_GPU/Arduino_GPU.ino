#include <U8g2lib.h>
#include <Wire.h>
#include <SPI.h>

U8G2_SSD1322_NHD_256X64_F_4W_HW_SPI u8g2(U8G2_R0, /* cs=*/ 7, /* dc=*/ 9, /* reset=*/ 10);  // Enable U8G2_16BIT in u8g2.h

int w = 32;
int a = 1;
int s = millis()/1000;

#define slaveAddress 9

void setup() {
  u8g2.begin();
  u8g2.clearBuffer();
  u8g2.setFont(u8g2_font_profont17_mf);
  Wire.begin(8);                // join i2c bus with address #8
  Wire.onReceive(receiveEvent); // register event
  Serial.begin(9600);           // start serial for output
}

void loop() {
}

void receiveEvent(int howMany) {
  while (0 < Wire.available()) { // loop through all but the last
    int c = Wire.read(); // receive byte as a character
    if (c == 67) {
      Rectangle();
    }
    if (c == 128) {
      u8g2.clearBuffer();
    }
    if (c == 129) {
      u8g2.sendBuffer();
    }
  }
}

void Rectangle() {
  int xpos = Wire.read();
  int ypos = Wire.read();
  int width = Wire.read();
  int height = Wire.read();
//  Serial.print("X Position: "); Serial.println(xpos);
//  Serial.print("Y Position: "); Serial.println(ypos);
//  Serial.print("Width: "); Serial.println(width);
//  Serial.print("Height: "); Serial.println(height);
  u8g2.drawBox(xpos,ypos,width,height);
}
