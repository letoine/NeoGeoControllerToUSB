

#ifdef _SERIAL_DEBUG
#include "SerialDebug.h"

FILE debugSerial;

void SerialDebug_Init() {
  Serial_Init(9600, false);
  Serial_CreateStream(&debugSerial);
}

void SerialDebug_printByteArray(uint8_t* arrayData, uint16_t arraySize) {
  while (arraySize) {
    SerialDebug_printf("%#0x\r\n", *arrayData);
    arrayData++;
    arraySize--;
  }
}

#endif
