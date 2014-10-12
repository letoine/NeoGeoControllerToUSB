NeoGeoControllerToUSB
=====================

Simple adapter that transforms a NeoGeo controller into a USB controller.

NeoGeo controller pinout
========================

NeoGeo controller connector is a DB15. NeoGeo controller only has four (4)
buttons (A, B, C, D). The D button is connected to pins 9 and 4, but the
console only cheks for pin 4. Pins 10 and 2 are not connected.

Some superguns uses a DB15 for the controller with a compatible pinout. These
superguns are using the non-connected pins to support games with more than
four buttons, like capcom games using the kick-harness.

DB15 pinout controller
-------------------------
\ 1 2  3  4  5  6  7  8 /
 \ 9 10 11 12 13 14 15 /
  --------------------


pin |    function    | comment
----|----------------|--------------
 1  | +5V            |
 2  | Down           |
 3  | Right          |
 4  | B button       | 
 5  | D button       |
 6  | Select         |
 7  | NC/Kick1       | Not connected on NeoGeo, used for kick in superguns.
 8  | GND            | 
 9  | Up             | 
10  | Left           | 
11  | A button       | 
12  | C button       | 
13  | Start          | 
14  | NC/Kick3       | Not connected on NeoGeo, used for kick in superguns.
15  | D button/Kick2 | Not read by console, used for kick in superguns.


ATMega pins/Controller mapping
=========================

 IO | DB-Pin |  button
----|--------|--------
PB0 |    4   |  B
PB1 |   12   |  C
PB2 |    5   |  D
PB3 |    6   |  Select
PB4 |   13   |  Start
PB5 |    7   |  Kick_1
PB6 |   14   |  Kick_3
PB7 |   15   |  D/Kick_2
PC2 |   11   |  A
PD0 |   10   |  Left
PD1 |    9   |  Up
PD2 |    -   |   -
PD3 |    -   |   -
PD4 |    2   |  Down
PD5 |    3   |  Right
PD6 |    -   |   -
PD7 |    -   |   -
