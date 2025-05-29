#!/usr/bin/env ruby
# Gererate G-Code to dry filament on a 3D-Printer's heat bed
#
# https://www.printables.com/@combobulator 
# published a model...
# https://www.printables.com/model/783598-diy-print-bed-filament-dryer-with-prusa-mk4-drying
# which includes gcode which was good to start but not perfect for my Prusa Printer MK3.9 
# 
# because loops in gcode are not possible i wrote this generator to create a gcode file for my needs
#
# paramterize it in the next section then execute this code
# e.g. in a terminal with 
# ruby generator.rb
# it will generate the gcode file
#
# Creative Commons (4.0 Internationale Lizenz)
# Attribution — Noncommercial — Share Alike
# https://www.printables.com/@lual
################################################################################################
# parameterize it....
printer_model = "MK3.9" # be careful on changing this - check if gcode commands are compatible ("MK4" should be OK) 
material = "PLA" # used just for displaying texts
# temperature of print bed in °C. depending on your temp losses in your box/chamber,
# you could add some degrees (e.g. add 20°C)...
bed_temp = 55 
drying_time = 300 #[minutes]     

# Find some Drying parameters here:  https://3dprinterly.com/how-to-dry-filament-like-a-pro-pla-abs-petg-nylon-tpu/
# PLA           40-45°C 4-5 Hours
# ABS           65-70°C 2-6 Hours
# PETG          65-70°C 4-6 Hours
# Nylon         75-90°C 4-6 Hours
# TPU           45-60°C 4-5 Hours
# Polycarbonate 80-90°C 8-10 Hours
################################################################################################

gcode = <<~GCODE_BLOCK
M73 P0 R#{drying_time} ; Percent complete and time remaining on LCD screen
; Display text on LCD screen
M117 "Drying PLA Filament"
;M1 Print Bed is clear?; wait for user aknowledge - DOES NOT WORK

M201 X4000 Y4000 Z200 E2500 ; sets maximum accelerations, mm/sec^2
M203 X300 Y300 Z40 E100 ; sets maximum feedrates, mm / sec
M204 P4000 R1200 T4000 ; sets acceleration (P, T) and retract acceleration (R), mm/sec^2
M205 X8.00 Y8.00 Z2.00 E10.00 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec

M486 S0
M486 ADrying #{material} Filament
M486 S-1


M107 ; Disable part fan
M104 S0 ; Turn off extruder heater
M862.3 P "#{printer_model}" ; printer model check
M862.5 P2 ; g-code level check

G90 ; Use absolute coordinates for the next moves

M140 S#{bed_temp} ; set bed temp

G28 W; Home all axis without mesh bed leveling
; Move x-axis to top to make space for box, move printhead to the right and move printer bed to 
; front
G1 X241 Y180 Z220.0 F750 
; Prusa specific safety timer expiration, set to 6 hours (in seconds). 
; M86 = Set safety timer expiration time. 
; M85 = Set max inactive time, but this doesn't seem to work
M86 S21600

M300 S1000 P500 ; Beep
M300 S0 P200 ; Wait
M300 S1200 P1000 ;Second beep
M300 S0 P200 ; Wait
M300 S1500 P1500 ;Third beep


; Display text on LCD screen
M117 "Place spool on bed"
; Disable stepper motors to save energy. Make sure not to move them when they're off as the
; printer will force them online for a couple of minutes upon completion.
M18

GCODE_BLOCK
# 1 minute loop to update time and prevent printer from turning off

drying_time.times do |at_minute|
  gcode << "M73 P#{(100*(at_minute.to_f/drying_time)).round} R#{drying_time-at_minute} ; #{(100*(at_minute.to_f/drying_time)).round}% complete, #{drying_time-at_minute}' remaining\n"
  gcode << "M140 S#{bed_temp} ; set bed temp\n"
  gcode << "G4 S60 ; wait a minute\n\n"
end

gcode<< <<~GCODE_BLOCK
; Display text on LCD screen
M117 "Drying Complete"
M300 S1000 P500 ; Beep
M300 S0 P200 ; Wait
M300 S1200 P1000 ;Second beep
M300 S0 P200 ; Wait
M300 S1500 P1500 ;Third beep

M104 S0 ; Turn off extruder heater (set its temperature to 0) (Redundant)
M140 S0 ; Turn off heatbed (set its temperature to 0)
M107 ; Turn off fan (redundant)
M18 ; Disable stepper motors (redundant)

; Set print progress percentage in normal mode to 100% and time remaining in normal mode to 0
M73 P100 R0
; Set progress percentage to 100% in silemnt mode and time remaining in silent mode to 0
M73 Q100 S0

GCODE_BLOCK
################################################################################################
# write output gcode file
filename = "#{material}_drying_with#{bed_temp}deg_for_#{drying_time}m_#{printer_model}.gcode"
File.write(filename, gcode)
puts "#{filename} generated."
