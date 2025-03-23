M104 S0
M140 S0
;Retract the filament
G92 E1
G1 E-1 F300
G28 X0 Y0
G90 ;Absolute positionning
G1 Y200 F3000 ;Present print
M84 ;steppers off
M300 P300 S4000
M117 Finished.