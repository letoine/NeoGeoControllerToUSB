#ifndef _DESCRIPTORS_H_
#define _DESCRIPTORS_H_

#include <avr/pgmspace.h>
#include <stdio.h>

#include <LUFA/Drivers/USB/USB.h>
#include "SerialDebug.h"

typedef struct {
  USB_Descriptor_Configuration_Header_t Config;
  
  // Joystick HID Interface
  USB_Descriptor_Interface_t            HID_Interface;
  USB_HID_Descriptor_HID_t              HID_JoystickHID;
  USB_Descriptor_Endpoint_t             HID_ReportINEndpoint;
} USB_Descriptor_Configuration_t;

enum InterfaceDescriptors_t {
  INTERFACE_ID_Joystick = 0,
};

enum StringDescriptors_t {
  STRING_ID_Language     = 0,
  STRING_ID_Manufacturer = 1,
  STRING_ID_Product      = 2,
};

#define JOYSTICK_EPADDR              (ENDPOINT_DIR_IN | 1)

#define JOYSTICK_EPSIZE              8

uint16_t CALLBACK_USB_GetDescriptor(const uint16_t wValue,
				    const uint8_t wIndex,
				    const void** const DescriptorAddress)
  ATTR_WARN_UNUSED_RESULT ATTR_NON_NULL_PTR_ARG(3);

#endif

