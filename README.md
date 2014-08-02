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

pin |    function    | comment
----|----------------|--------------
 1  | GND            | 
 2  | NC/Kick1       | Not connected on NeoGeo, used for kick in superguns.
 3  | Select         |
 4  | D button       |
 5  | B button       | 
 6  | Right          |
 7  | Down           |
 8  | +5V            |
 9  | D button/Kick2 | Not read by console, used for kick in superguns.
10  | NC/Kick3       | Not connected on NeoGeo, used for kick in superguns.
11  | Start          | 
12  | C button       | 
13  | A button       | 
14  | Left           | 
15  | Up             | 

