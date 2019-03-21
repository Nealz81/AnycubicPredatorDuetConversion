; Configuration file for Duet Maestro (firmware version 1.21)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v2 on Sat Mar 16 2019 23:24:37 GMT+0100 (Mitteleuropäische Normalzeit)
; edited by tcj
; if everything but the board is unchanged and connected as Duet3D recommends

; General preferences
M111 S0                                     ; Debug off
G90                                         ; Send absolute coordinates...
M83                                         ; ...but relative extruder moves
M555 P2                                     ; Set output to look like Marlin

; Network
M550 P"Anycubic Predator"                   ; Set machine name
M551 Preprap                                ; Machine password (used when you connect Duet Web Control or via FTP)
M552 P0.0.0.0 S1                            ; Enable network and acquire dynamic address via DHCP
M586 P0 S1                                  ; Enable HTTP
M586 P1 S1                                  ; Enable FTP (enable or disable for your needs)
M586 P2 S1                                  ; Enable Telnet (enable or disable for your needs)

; Drives
M569 P0 S0 D3 V100                          ; Drive 0 (X) goes forwards, stealthChop mode, switch from stealthChop to to spreadCycle mode only at high speeds
M569 P1 S0 D3 V100                          ; Drive 1 (Y) same as Drive 0 
M569 P2 S0 D3 V100                          ; Drive 2 (Z) same as Drive 0 
M569 P3 S0 D2                               ; Drive 3 (Extruder) goes forwards, spreadCycle mode
M350 X16 Y16 Z16 E16 I1                     ; Configure microstepping with interpolation
M92 X80.00 Y80.00 Z80.00 E390.63            ; Set steps per mm 

											; the following speed and acceleration values are transfered from the original firmware, might be tuned later
M201 X1100.00 Y1100.00 Z1100.00 E1100.00    ; Set accelerations (mm/s^2)
M203 X9000.00 Y9000.00 Z9000.00 E4800.00    ; Set maximum speeds (mm/min)
M566 X1500.00 Y1500.00 Z1500.00 E1500.00    ; Set maximum instantaneous speed changes (mm/min)

M906 X1000.00 Y1000.00 Z1000.00 E800.00 I60 ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                                     ; Set idle timeout

; Delta configuration
M665 R227 L440 B185 H455                    ; Set delta radius, diagonal rod length, printable radius and homed height 
M666 X0 Y0 Z0                               ; Put your endstop adjustments here, or let auto calibration find them

; Axis Limits
M208 Z0 S1                                  ; Set minimum Z

; Endstops
M574 X2 Y2 Z2 S1                            ; all endstops at high end, active high

; Z-Probe
M558 P6 H5 F240 T6000                       ; Set Z probe type to switch and the dive height + speeds
G31 P500 X0 Y0 Z15.698                      ; Set Z probe trigger value, offset and trigger height - must be adjusted for your machine
M557 R185 S20                               ; Define mesh grid

; Heaters
M305 P0 T100000 B3950 R2200                 ; Set thermistor + ADC parameters for heater 0 (thermistor type guessed)
M305 P1 T100000 B3950 R2200                 ; Set thermistor + ADC parameters for heater 1 (thermistor type guessed)
M307 H0 A137.8 C533.3 D1.5 V24.3 B0         ; PID parameters for heatbed - must be adjusted for your machine                   
M307 H1 A503.5 C107.0 D9.3 V24.3 B0         ; PID parameters for hotend - must be adjusted for your machine                   
M143 H0 S120                                ; Set temperature limit for heater 0 to 120C
M143 H1 S250                                ; Set temperature limit for heater 1 to 280C

; Fans
M106 P0 S0 I0 F100 H-1 C"Print Cooling"     ; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S1 I0 F100 H1 T45 C"Heatsink"       ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on
M106 P2 S1 I0 F100 H100:101 T40 C"Board"	; Set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned on

; Tools
M200 D1.75									; set extruder filament diameter to 1.75mm
M563 P0 D0 H1 F0                            ; Define tool 0, extruder 0, Heater 1, Fan 0
G10 P0 X0 Y0 Z0                             ; Set tool 0 axis offsets
G10 P0 R0 S0                                ; Set initial tool 0 active and standby temperatures to 0C
T0 											; select tool 0

; Filament Sensor
M591 D0 P1 C3 S1

; Automatic saving after power loss is not enabled

; Custom settings are not configured

; if you changed to 12V, uncomment the next line
;M98 P12V.g

; if you changed to a Bondtech BMG (Clone), uncomment the next line
;M98 PBondtechBMG.g

; Miscellaneous
M501                                        ; Load saved parameters from non-volatile memory

