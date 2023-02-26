#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define OLED_RESET LED_BUILTIN
Adafruit_SSD1306 display(OLED_RESET);
static uint32_t timer;

void setup(void)
{
  Serial.begin(9600);
  delay(10);
  display.begin(SSD1306_SWITCHCAPVCC, 0x3F);  // initialize with the I2C addr 0x3D (for the 128x64)
  
  display.display();
  delay(2000);
  display.clearDisplay();
  display.setTextSize(2);
  //display.setTextColor(WHITE);
  display.setCursor(0,0);
  display.println("Svaco testing");
  display.display();
  delay(2000);
}

void loop() {   
  
  if (millis() > timer) {
    timer = millis() + 1000;
    
  }
}

