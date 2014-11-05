#ifndef _JOYSTICK_H_
#define _JOYSTICK_H_

#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/power.h>
#include <avr/interrupt.h>
#include <string.h>

#include "Descriptors.h"

#include <LUFA/Drivers/USB/USB.h>
#include <LUFA/Platform/Platform.h>
#include "SerialDebug.h"

typedef struct {
  int8_t  X;
  int8_t  Y;
  union {
    uint8_t raw[2];
    struct {
      unsigned int square:1;
      unsigned int cross:1;
      unsigned int circle:1;
      unsigned int triangle:1;

      unsigned int l1:1;
      unsigned int r1:1;
      unsigned int l2:1;
      unsigned int r2:1;
      
      unsigned int select:1;
      unsigned int start:1;
      unsigned int pad1:2;
      
      unsigned int home:1;
      unsigned int pad2:3;      
    };
  } button;
} USB_JoystickReport_Data_t;

void SetupHardware(void);

#endif

