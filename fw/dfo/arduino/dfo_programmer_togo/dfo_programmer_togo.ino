
// Copyright (c) 2020 Peter Bartmann

#include <Wire.h>

#define VERIFY_ONLY   0 // set to 1 if you only want to verify registers
#define WRITE_EEPROM  1 // set to 1 if want to store new register values to EEPROM of CDCE913

// INSERT HERE REGISTER VALUES GENERATED WITH 'generate_byte_buffer.c' PROGRAM
// SNES Multinorm
const byte dfo_regs[32] = {0x01, 0x00, 0xbc, 0x06, 0x01, 0x90, 0x40, 0x00, \
                           0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, \
                           0x00, 0x00, 0x00, 0x01, 0x6b, 0x01, 0x18, 0x05, \
                           0x4f, 0x55, 0x53, 0xec, 0x96, 0xf1, 0x72, 0x69};

// do not edit the following lines
#define I2C_CLOCK_FREQUENCY_KHZ 100

#define BASE_ADDR     0x00
#define NUM_OF_REGS   32

#define I2C_ADDR_REG  0x01
#define EEWRITE_REG   0x06
#define EEWRITE_BIT   0
#define EEPIP_REG     0x01
#define EEPIP_BIT     6

#define LED_PIN 13



const byte CDCE913_I2C_FACADDR = 0x65;
byte serial_available = 0;

void setup() {
  Serial.begin(9600);  // start serial for output
  for (int idx = 0; idx < 500; idx++) {
    if(Serial) {
      serial_available = 1;
      break;
    }
    delay(1);
  };
  Wire.begin(); // join i2c bus (address optional for master)
  Wire.setClock((long int) 1000*I2C_CLOCK_FREQUENCY_KHZ); 
  
  pinMode(LED_PIN, OUTPUT); // sets the digital pin 13 as output (onboard LED)
}


void loop() {
  int idx;
  byte i2c_cdce913_addr = 0;
  byte bytebuf, compare_byte;
  int error = -1;
  int error_reg = -1;
  
  // Hello
  if (serial_available) Serial.print("Wait for CDCE913: ... ");
  while(error !=0) {
    digitalWrite(LED_PIN, HIGH);
    delay(500);
    digitalWrite(LED_PIN, LOW);
    delay(500);
    for (idx = 0; idx < 4; idx++) {
      Wire.beginTransmission((CDCE913_I2C_FACADDR & 0x7c) | idx);
      error = Wire.endTransmission();
      if (error == 0) break;
    }
  }
  digitalWrite(13, HIGH);
  i2c_cdce913_addr = (byte) (CDCE913_I2C_FACADDR & 0xfc) | idx;
  if (serial_available) {
    Serial.print("Found! (CDCE913 I2C Address: 0x");
    Serial.print(i2c_cdce913_addr, HEX);
    Serial.print(")\n");
  }

  if (serial_available) Serial.print("Write registers: ");

  // write register values
  if (!VERIFY_ONLY) {
    Wire.beginTransmission(i2c_cdce913_addr);
    Wire.write(BASE_ADDR);
    Wire.write(NUM_OF_REGS);
    for (idx = 0; idx < NUM_OF_REGS; idx++) {
      switch (idx) {
        case I2C_ADDR_REG:
          Wire.write((dfo_regs[idx] & 0xfc) | (i2c_cdce913_addr & 0x03)); // make sure to not overwrite current slave address
          break;
        case EEWRITE_REG:
          Wire.write(dfo_regs[idx] & ~(1<<EEWRITE_BIT));  // do not set the EEWRITE_BIT
          break;
        default:
          Wire.write(dfo_regs[idx]);
      }
      if (serial_available) Serial.print(".");
    }
    Wire.endTransmission();    // stop transmitting
    if (serial_available) Serial.print(" done!\n");
    
    digitalWrite(LED_PIN, LOW);
    delay(100);
    digitalWrite(LED_PIN, HIGH);
  } else {
    if (serial_available) Serial.print("skipped.\n");
  }

  // verify registers
  if (serial_available) Serial.print("Verify registers: ... \n");
    
  Wire.beginTransmission(i2c_cdce913_addr); 
  Wire.write(BASE_ADDR);
  Wire.endTransmission();
  
  Wire.requestFrom((int) i2c_cdce913_addr,(int) NUM_OF_REGS + 1);
  idx = (int) Wire.read(); // first value is number of data
  if (serial_available) {
      Serial.print(" - Number of bytes returned: ");
      Serial.print(idx, DEC);
      Serial.print("\n");
  }
  idx = 0;
  error = 0;
  while (Wire.available()) {
    bytebuf = Wire.read(); // receive a byte as character
    if (serial_available) {
        Serial.print(" - Value read at reg 0x");
        Serial.print(idx, HEX);
        Serial.print(": 0x");
        Serial.print(bytebuf, HEX);
    }
    if ((idx != 0) && ((idx < 7) || (idx > 15))) {
      switch (idx) {
        case I2C_ADDR_REG:
          compare_byte = (dfo_regs[idx] & 0xfc) | (i2c_cdce913_addr & 0x03);
          break;
        case EEWRITE_REG:
          compare_byte = (dfo_regs[idx] & ~(1<<EEWRITE_BIT));  // EEWRITE_BIT should not be set, so compare to reg val with cleared bit
          break;
        default: compare_byte = dfo_regs[idx];
      }
      error |= (bytebuf != compare_byte);
      if (serial_available) {
        Serial.print(" (0x");
        Serial.print(compare_byte, HEX);
        Serial.print(" expected)\n");
      }
    } else {
      if (serial_available) Serial.print(" (not evaluated as reg is read only)\n");
    }
    if ((error != 0) && (error_reg < 0)) error_reg = idx;
    idx++;
    delay(10);
    digitalWrite(LED_PIN, LOW);
    delay(10);
    digitalWrite(LED_PIN, HIGH);
  }

  if (error == 0 && idx == NUM_OF_REGS) {
    if (serial_available) Serial.print("... done!\n");
    digitalWrite(13, LOW);
    delay(100);
    digitalWrite(13, HIGH);
  } else {
    if (serial_available) {
      Serial.print("... VERIFICATION ERROR!\n");
      if (idx != NUM_OF_REGS) Serial.print("Number of Bytes not as expected!\n");
      if (error_reg > -1) {
        Serial.print("First register error at 0x");
        Serial.print(error_reg, HEX);
        Serial.print("!\n");
      }
    }
    while(1) {
      digitalWrite(LED_PIN, LOW);
      delay(500);
      digitalWrite(LED_PIN, HIGH);
      delay(500);
    }
  }
  
  // store registers in EEPROM
  if (serial_available) Serial.print("Store registers in EEPROM: ... ");
  
  if (WRITE_EEPROM && !VERIFY_ONLY) {
    // set write bit
    Wire.beginTransmission(i2c_cdce913_addr); 
    Wire.write(EEWRITE_REG);
    Wire.endTransmission();
    
    Wire.requestFrom((int) i2c_cdce913_addr,(int) 2);
    Wire.read();
    bytebuf = Wire.read();
    bytebuf |= (1<<EEWRITE_BIT); // set write bit
    
    Wire.beginTransmission(i2c_cdce913_addr); 
    Wire.write(EEWRITE_REG);
    Wire.write(1);
    Wire.write(bytebuf);
    Wire.endTransmission();

    if (serial_available) Serial.print("requested ... ");

    // wait for completed
    do {
      digitalWrite(LED_PIN, LOW);
      delay(10);
      digitalWrite(LED_PIN, HIGH);
      
      Wire.beginTransmission(i2c_cdce913_addr); 
      Wire.write(EEPIP_REG);
      Wire.endTransmission();
      
      Wire.requestFrom((int) i2c_cdce913_addr,(int) 2);
      Wire.read();
      bytebuf = Wire.read();
    } while (bytebuf & (1<<EEPIP_BIT));
    
    if (serial_available) Serial.print("done!\n");

    // clear write bit
    Wire.beginTransmission(i2c_cdce913_addr); 
    Wire.write(EEWRITE_REG);
    Wire.endTransmission();
    
    Wire.requestFrom((int) i2c_cdce913_addr,(int) 2);
    Wire.read();
    bytebuf = Wire.read();
    bytebuf &= ~(1<<EEWRITE_BIT); // clear write bit
    
    Wire.beginTransmission(i2c_cdce913_addr); 
    Wire.write(EEWRITE_REG);
    Wire.write(1);
    Wire.write(bytebuf);
    Wire.endTransmission();
    
    digitalWrite(LED_PIN, LOW);
    delay(100);
    digitalWrite(LED_PIN, HIGH);
  } else {
    if (serial_available) Serial.print("skipped.\n");
  }

  if (serial_available) Serial.print("SUCCESS!\n");
  while(1) {
    digitalWrite(LED_PIN, LOW);
    delay(2000);
    digitalWrite(LED_PIN, HIGH);
    delay(2000);
  }
}
