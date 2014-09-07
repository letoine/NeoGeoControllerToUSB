
#include "Joystick.h"

static uint8_t PrevJoystickHIDReportBuffer[sizeof(USB_JoystickReport_Data_t)];

USB_ClassInfo_HID_Device_t Joystick_HID_Interface = {
  .Config = {
    .InterfaceNumber = INTERFACE_ID_Joystick,
    .ReportINEndpoint = {
      .Address              = JOYSTICK_EPADDR,
      .Size                 = JOYSTICK_EPSIZE,
      .Banks                = 1,
    },
    .PrevReportINBuffer           = PrevJoystickHIDReportBuffer,
    .PrevReportINBufferSize       = sizeof(PrevJoystickHIDReportBuffer),
  },
};


int main(void) {
  SetupHardware();
  
  GlobalInterruptEnable();
  
  for (;;) {
    HID_Device_USBTask(&Joystick_HID_Interface);
    USB_USBTask();
  }
}

void SetupHardware(void) {
  /* Disable watchdog if enabled by bootloader/fuses */
  MCUSR &= ~(1 << WDRF);
  wdt_disable();
  
  /* Disable clock division */
  clock_prescale_set(clock_div_1);
  
  /* Hardware Initialization */
  DDRB = 0;
  DDRD = 0;
  PORTB = 0xF1;
  PORTD = 0xFF;
  
  USB_Init();
}

void EVENT_USB_Device_ConfigurationChanged(void) {
  bool ConfigSuccess = true;
  
  ConfigSuccess &= HID_Device_ConfigureEndpoints(&Joystick_HID_Interface);
  
  USB_Device_EnableSOFEvents();
}

void EVENT_USB_Device_ControlRequest(void) {
  HID_Device_ProcessControlRequest(&Joystick_HID_Interface);
}

void EVENT_USB_Device_StartOfFrame(void) {
  HID_Device_MillisecondElapsed(&Joystick_HID_Interface);
}

bool CALLBACK_HID_Device_CreateHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                         uint8_t* const ReportID,
                                         const uint8_t ReportType,
                                         void* ReportData,
                                         uint16_t* const ReportSize)
{
  USB_JoystickReport_Data_t* JoystickReport = (USB_JoystickReport_Data_t*)ReportData;
  
  uint8_t dport = PIND;
  uint8_t bport = PINB;
  
  JoystickReport->Y = 0;
  JoystickReport->X = 0;
  JoystickReport->Button = 0;
  
  if (!(dport & 1))	// Up
    JoystickReport->Y = -127;
  else if (!(dport&(1<<1)))	// Down
    JoystickReport->Y =  127;
  
  if (!(dport&(1<<2)))	// Left
    JoystickReport->X = -127;
  else if (!(dport&(1<<3)))	// Right
    JoystickReport->X =  127;
  
  if (!(dport&(1<<4)))	// A
    JoystickReport->Button |= (1 << 0);
  
  if (!(dport&(1<<5)))	// B
    JoystickReport->Button |= (1 << 1);
  
  //if (!(dport&(1<<6)))	// C
  if (!(bport&(1<<5)))	// Teensy uses PORTD6 for LED
    JoystickReport->Button |= (1 << 2);
  
  if (!(dport&(1<<7)))	// D
    JoystickReport->Button |= (1 << 3);
  
  if (!(bport&(1<<0)))	// Start
    JoystickReport->Button |= (1 << 4);
  
  if (!(bport&(1<<4)))	// Select
    JoystickReport->Button |= (1 << 5);
  
  *ReportSize = sizeof(USB_JoystickReport_Data_t);
  return false;
}

void CALLBACK_HID_Device_ProcessHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                          const uint8_t ReportID,
                                          const uint8_t ReportType,
                                          const void* ReportData,
                                          const uint16_t ReportSize)
{
  // Unused (but mandatory for the HID class driver) in this demo, since there are no Host->Device reports
}

