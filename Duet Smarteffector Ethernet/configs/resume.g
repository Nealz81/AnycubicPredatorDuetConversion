; resume.g
; called before a print from is resumed
;
; generated by RepRapFirmware Configuration Tool v2 on Mon Mar 25 2019 23:44:48 GMT+0100 (Mitteleuropäische Normalzeit)
G1 R1 X0 Y0 Z5 F6000 ; go to 5mm above position of the last print move
G1 R1 X0 Y0          ; go back to the last print move
M83                  ; relative extruder moves
G1 E10 F3600         ; extrude 10mm of filament

