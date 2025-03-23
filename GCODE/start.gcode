
;M501;    Load Saved Settings from EEPROM
M413
M413 S0 ;Disable power-loss recovery
;M205 J0.04; Set junction deviation
;M500;    Save Settings on EEPROM
M117 Power-loss Recovery DISABLED
M118 Power-loss Recovery DISABLED
;G4 P1000 S1; 1 second pause to read

M140 S{material_bed_temperature} ; start preheating the bed WITHOUT wait to what is set in Cura
M104 S{material_print_temperature} ﻿T0 ; start preheating hotend WITHOUT wait to what is set in Cura
G28 ;Home
G1 Z15.0 F6000 ;Move the platform down 15mm
; M106 S255
M190 S{material_bed_temperature} ; start heating the bed to what is set in Cura and WAIT
M109 S{material_print_temperature} ﻿T0 ; start heating hotend to what is set in Cura and WAIT
;Prime the extruder
G92 E0
G1 F200 E6 ;extrude 6mm of feed stock
G1 E20 ; extrude 20 mm of filament
G1 z15 F12000 E10 ; move 15 mm up, fast, while extruding 5mm
G92 E0 ; reset extruder
G1 Z15.0 F6000 ;Move the platform down 15mm
G92 E0 ;zero the extruded length

M117 Intro line ...

G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5.1 Y20 Z0.2 F5000.0 ;Move to start position
G1 X5.1 Y200.0 Z0.2 F1500.0 E15 ;Draw the first line
G1 X5.4 Y200.0 Z0.2 F5000.0 ;Move to side a little
G1 X5.4 Y20 Z0.2 F1500.0 E30 ;Draw the second line
G92 E0 ; Reset Extruder
G1 X5 Y20 Z0.3 F240 ; Move over to prevent blob squish
G92 E0 ; Reset Extruder

M117 Printing ...