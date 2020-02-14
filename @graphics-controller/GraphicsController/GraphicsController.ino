#include <U8g2lib.h>
#include <Wire.h>
#include <SPI.h>

U8G2_SSD1322_NHD_256X64_F_4W_HW_SPI u8g2(U8G2_R0, /* cs=*/ 7, /* dc=*/ 9, /* reset=*/ 10); // MUST ENABLE 16 BIT IN U8G2.h!!!!

void setup() {
  u8g2.begin();
  u8g2.clearBuffer();
  u8g2.setFont(u8g2_font_profont17_mf);
  Wire.begin(8);
  Wire.onReceive(receiveEvent);
  Serial.begin(9600);
}

void loop() {
}

void receiveEvent(int howMany) {
  while (0 < Wire.available()) {
    int c = Wire.read();
    if (c == 0) {
      u8g2.clearBuffer();
    }
    if (c == 1) {
      u8g2.sendBuffer();
    }
    if (c == 16) {
      Pixel();
    }
    if (c == 17) {
      Line();
    }
    if (c == 18) {
      Rectangle();
    }
    if (c == 19) {
    hollowRectangle();
    }
    if (c == 20) {
      Circle();
    }
    if (c == 21) {
      hollowCircle();
    }
    if (c == 33) {
      Text();
    }
    if (c == 34) {
      Font();
    }
  }
}

void Pixel() {
  int x = Wire.read();
  int y = Wire.read();
  u8g2.drawPixel(x,y);
}

void Line() {
  int x1 = Wire.read();
  int y1 = Wire.read();
  int x2 = Wire.read();
  int y2 = Wire.read();
  u8g2.drawLine(x1,y1,x2,y2);
}

void Rectangle() {
  int x = Wire.read();
  int y = Wire.read();
  int width = Wire.read();
  int height = Wire.read();
  u8g2.drawBox(x,y,width,height);
}

void hollowRectangle() {
  int x = Wire.read();
  int y = Wire.read();
  int width = Wire.read();
  int height = Wire.read();
  u8g2.drawFrame(x,y,width,height);
}

void Circle() {
  int x = Wire.read();
  int y = Wire.read();
  int r = Wire.read();
  u8g2.drawDisc(x,y,r,U8G2_DRAW_ALL);
}

void hollowCircle() {
  int x = Wire.read();
  int y = Wire.read();
  int r = Wire.read();
  u8g2.drawCircle(x,y,r,U8G2_DRAW_ALL);
}

void Text() {
  int stringLength = Wire.read();
  int x = Wire.read();
  int y = Wire.read();
//  char stringArray[stringLength];
  char stringArray = Wire.read();
//  for (int i = 0; i <= stringLength-1; i++) {
//    int stringChar = Wire.read();
//    Serial.println(stringChar);
//  }
//  u8g2.drawStr(x,y,stringArray);
  Serial.println(stringArray);
}

void Font() {
  int f = Wire.read();
  if (f == 6) {
    u8g2.setFont(u8g2_font_profont10_mf);
  }
  if (f == 7) {
    u8g2.setFont(u8g2_font_profont11_mf);
  }
  if (f == 8) {
    u8g2.setFont(u8g2_font_profont12_mf);
  }
  if (f == 9) {
    u8g2.setFont(u8g2_font_profont15_mf);
  }
  if (f == 11) {
    u8g2.setFont(u8g2_font_profont17_mf);
  }
  if (f == 14) {
    u8g2.setFont(u8g2_font_profont22_mf);
  }
  if (f == 19) {
    u8g2.setFont(u8g2_font_profont29_mf);
  }
}
