
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

static union {
  uint8_t raw[1];
  struct {
    unsigned int is_neo_geo_stick:1;
  };
} status;

typedef union {
  uint8_t raw;
  struct {
    unsigned int b_button:1;
    unsigned int c_button:1;
    unsigned int d_button:1;
    unsigned int select:1;
    
    unsigned int start:1;
    unsigned int kick1:1;
    unsigned int kick3:1;
    unsigned int d_kick2:1;
  };
} portb_defs;

typedef union {
  uint8_t raw;
  struct {
    unsigned int pad1:2;
    unsigned int a_button:1;
    unsigned int pad2:5;
  };
} portc_defs;

typedef union {
  uint8_t raw;
  struct {
    unsigned int left:1;
    unsigned int up:1;
    unsigned int pad1:2;
    
    unsigned int down:1;
    unsigned int right:1;
    unsigned int pad2:2;
  };
} portd_defs;

int main(void) {
  SetupHardware();
  
  GlobalInterruptEnable();
  
  for (;;) {
    HID_Device_USBTask(&Joystick_HID_Interface);
    USB_USBTask();
  }
}

FILE debugSerial;

void SetupHardware(void) {
  /* Disable watchdog if enabled by bootloader/fuses */
  MCUSR &= ~(1 << WDRF);
  wdt_disable();
  
  /* Disable clock division */
  clock_prescale_set(clock_div_1);
  
  status.is_neo_geo_stick = 1;
  
  /* Hardware Initialization */
  /* Port B all pins are input with pull=up resistor enabled */
  DDRB = 0;
  PORTB = 0xFF;
  /* Port C we only use pin 2 */
  DDRC &= ~(1<<DDC2);
  PORTC |= (1<<PORTC2);
  /* Port D we use ping 0-1, 4-5 */
  DDRD = 0xFF;
  PORTD = 0x33;
  
  Serial_Init(9600, false);
  Serial_CreateStream(&debugSerial);
  USB_Init();
}

void EVENT_USB_Device_ConfigurationChanged(void) {
  bool ConfigSuccess = true;
  
  Serial_SendString("EVENT_USB_Device_ConfigurationChanged\r\n");
  ConfigSuccess &= HID_Device_ConfigureEndpoints(&Joystick_HID_Interface);
  
  USB_Device_EnableSOFEvents();
}

void EVENT_USB_Device_ControlRequest(void) {
  Serial_SendString("EVENT_USB_Device_ControlRequest\r\n");
  HID_Device_ProcessControlRequest(&Joystick_HID_Interface);
}

void EVENT_USB_Device_StartOfFrame(void) {
  //Serial_SendString("EVENT_USB_Device_StartOfFrame\r\n");
  HID_Device_MillisecondElapsed(&Joystick_HID_Interface);
}

bool CALLBACK_HID_Device_CreateHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                         uint8_t* const ReportID,
                                         const uint8_t ReportType,
                                         void* ReportData,
                                         uint16_t* const ReportSize)
{
  USB_JoystickReport_Data_t* JoystickReport = (USB_JoystickReport_Data_t*)ReportData;
  
  portd_defs dport;
  portc_defs cport;
  portb_defs bport;
  
  dport.raw = PIND;
  cport.raw = PINC;
  bport.raw = PINB;
  
  JoystickReport->Y = 0;
  JoystickReport->X = 0;
  JoystickReport->button.raw[0] = 0;
  JoystickReport->button.raw[1] = 0;
  
  if (!dport.up)
    JoystickReport->Y = -127;
  else if (!dport.down)
    JoystickReport->Y =  127;
  
  if (!dport.left)
    JoystickReport->X = -127;
  else if (!dport.right)
    JoystickReport->X =  127;
  
  if (!cport.a_button)
    JoystickReport->button.cross = 1;
  
  if (!bport.b_button)
    JoystickReport->button.circle = 1;
  
  if (!bport.c_button)
    JoystickReport->button.square = 1;
  
  if (!bport.d_button)
    JoystickReport->button.triangle = 1;
  
  if (!bport.start && bport.select)
    JoystickReport->button.start = 1;
  
  if (!bport.select && bport.start)
    JoystickReport->button.select = 1;
  
  if (!bport.start && !bport.select)
    JoystickReport->button.home = 1;
  
  *ReportSize = sizeof(USB_JoystickReport_Data_t);
  return false;
}

inline void printArray(uint8_t* ReportData,
		       uint16_t ReportSize) {
  while (ReportSize) {
    fprintf(&debugSerial, "%#0x\r\n", *ReportData);
    ReportData++;
    ReportSize--;
  }
}

void CALLBACK_HID_Device_ProcessHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                          const uint8_t ReportID,
                                          const uint8_t ReportType,
                                          const void* ReportData,
                                          const uint16_t ReportSize)
{
  Serial_SendString("CALLBACK_HID_Device_ProcessHIDReport\r\n");
  fprintf(&debugSerial, "%#0x, %#0x\r\n", ReportID, ReportType);
  printArray(ReportData, ReportSize);
  
  // Unused (but mandatory for the HID class driver) in this demo, since there are no Host->Device reports
}
