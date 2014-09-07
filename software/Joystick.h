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

typedef struct {
  int8_t  X;
  int8_t  Y;
  uint8_t Button;
} USB_JoystickReport_Data_t;

void SetupHardware(void);

#endif

