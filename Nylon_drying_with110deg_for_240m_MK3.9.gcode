M73 P0 R240 ; Percent complete and time remaining on LCD screen
; Display text on LCD screen
M117 "Drying PLA Filament"
;M1 Print Bed is clear?; wait for user aknowledge - DOES NOT WORK

M201 X4000 Y4000 Z200 E2500 ; sets maximum accelerations, mm/sec^2
M203 X300 Y300 Z40 E100 ; sets maximum feedrates, mm / sec
M204 P4000 R1200 T4000 ; sets acceleration (P, T) and retract acceleration (R), mm/sec^2
M205 X8.00 Y8.00 Z2.00 E10.00 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec

M486 S0
M486 ADrying Nylon Filament
M486 S-1


M107 ; Disable part fan
M104 S0 ; Turn off extruder heater
M862.3 P "MK3.9" ; printer model check
M862.5 P2 ; g-code level check

G90 ; Use absolute coordinates for the next moves

M140 S110 ; set bed temp

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

M73 P0 R240 ; 0% complete, 240' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P0 R239 ; 0% complete, 239' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P1 R238 ; 1% complete, 238' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P1 R237 ; 1% complete, 237' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P2 R236 ; 2% complete, 236' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P2 R235 ; 2% complete, 235' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P3 R234 ; 3% complete, 234' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P3 R233 ; 3% complete, 233' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P3 R232 ; 3% complete, 232' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P4 R231 ; 4% complete, 231' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P4 R230 ; 4% complete, 230' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P5 R229 ; 5% complete, 229' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P5 R228 ; 5% complete, 228' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P5 R227 ; 5% complete, 227' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P6 R226 ; 6% complete, 226' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P6 R225 ; 6% complete, 225' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P7 R224 ; 7% complete, 224' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P7 R223 ; 7% complete, 223' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P8 R222 ; 8% complete, 222' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P8 R221 ; 8% complete, 221' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P8 R220 ; 8% complete, 220' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P9 R219 ; 9% complete, 219' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P9 R218 ; 9% complete, 218' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P10 R217 ; 10% complete, 217' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P10 R216 ; 10% complete, 216' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P10 R215 ; 10% complete, 215' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P11 R214 ; 11% complete, 214' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P11 R213 ; 11% complete, 213' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P12 R212 ; 12% complete, 212' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P12 R211 ; 12% complete, 211' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P13 R210 ; 13% complete, 210' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P13 R209 ; 13% complete, 209' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P13 R208 ; 13% complete, 208' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P14 R207 ; 14% complete, 207' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P14 R206 ; 14% complete, 206' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P15 R205 ; 15% complete, 205' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P15 R204 ; 15% complete, 204' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P15 R203 ; 15% complete, 203' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P16 R202 ; 16% complete, 202' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P16 R201 ; 16% complete, 201' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P17 R200 ; 17% complete, 200' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P17 R199 ; 17% complete, 199' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P18 R198 ; 18% complete, 198' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P18 R197 ; 18% complete, 197' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P18 R196 ; 18% complete, 196' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P19 R195 ; 19% complete, 195' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P19 R194 ; 19% complete, 194' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P20 R193 ; 20% complete, 193' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P20 R192 ; 20% complete, 192' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P20 R191 ; 20% complete, 191' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P21 R190 ; 21% complete, 190' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P21 R189 ; 21% complete, 189' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P22 R188 ; 22% complete, 188' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P22 R187 ; 22% complete, 187' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P23 R186 ; 23% complete, 186' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P23 R185 ; 23% complete, 185' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P23 R184 ; 23% complete, 184' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P24 R183 ; 24% complete, 183' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P24 R182 ; 24% complete, 182' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P25 R181 ; 25% complete, 181' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P25 R180 ; 25% complete, 180' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P25 R179 ; 25% complete, 179' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P26 R178 ; 26% complete, 178' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P26 R177 ; 26% complete, 177' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P27 R176 ; 27% complete, 176' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P27 R175 ; 27% complete, 175' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P28 R174 ; 28% complete, 174' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P28 R173 ; 28% complete, 173' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P28 R172 ; 28% complete, 172' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P29 R171 ; 29% complete, 171' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P29 R170 ; 29% complete, 170' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P30 R169 ; 30% complete, 169' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P30 R168 ; 30% complete, 168' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P30 R167 ; 30% complete, 167' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P31 R166 ; 31% complete, 166' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P31 R165 ; 31% complete, 165' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P32 R164 ; 32% complete, 164' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P32 R163 ; 32% complete, 163' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P33 R162 ; 33% complete, 162' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P33 R161 ; 33% complete, 161' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P33 R160 ; 33% complete, 160' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P34 R159 ; 34% complete, 159' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P34 R158 ; 34% complete, 158' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P35 R157 ; 35% complete, 157' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P35 R156 ; 35% complete, 156' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P35 R155 ; 35% complete, 155' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P36 R154 ; 36% complete, 154' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P36 R153 ; 36% complete, 153' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P37 R152 ; 37% complete, 152' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P37 R151 ; 37% complete, 151' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P38 R150 ; 38% complete, 150' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P38 R149 ; 38% complete, 149' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P38 R148 ; 38% complete, 148' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P39 R147 ; 39% complete, 147' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P39 R146 ; 39% complete, 146' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P40 R145 ; 40% complete, 145' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P40 R144 ; 40% complete, 144' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P40 R143 ; 40% complete, 143' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P41 R142 ; 41% complete, 142' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P41 R141 ; 41% complete, 141' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P42 R140 ; 42% complete, 140' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P42 R139 ; 42% complete, 139' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P43 R138 ; 43% complete, 138' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P43 R137 ; 43% complete, 137' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P43 R136 ; 43% complete, 136' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P44 R135 ; 44% complete, 135' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P44 R134 ; 44% complete, 134' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P45 R133 ; 45% complete, 133' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P45 R132 ; 45% complete, 132' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P45 R131 ; 45% complete, 131' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P46 R130 ; 46% complete, 130' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P46 R129 ; 46% complete, 129' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P47 R128 ; 47% complete, 128' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P47 R127 ; 47% complete, 127' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P48 R126 ; 48% complete, 126' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P48 R125 ; 48% complete, 125' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P48 R124 ; 48% complete, 124' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P49 R123 ; 49% complete, 123' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P49 R122 ; 49% complete, 122' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P50 R121 ; 50% complete, 121' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P50 R120 ; 50% complete, 120' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P50 R119 ; 50% complete, 119' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P51 R118 ; 51% complete, 118' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P51 R117 ; 51% complete, 117' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P52 R116 ; 52% complete, 116' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P52 R115 ; 52% complete, 115' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P53 R114 ; 53% complete, 114' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P53 R113 ; 53% complete, 113' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P53 R112 ; 53% complete, 112' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P54 R111 ; 54% complete, 111' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P54 R110 ; 54% complete, 110' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P55 R109 ; 55% complete, 109' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P55 R108 ; 55% complete, 108' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P55 R107 ; 55% complete, 107' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P56 R106 ; 56% complete, 106' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P56 R105 ; 56% complete, 105' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P57 R104 ; 57% complete, 104' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P57 R103 ; 57% complete, 103' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P57 R102 ; 57% complete, 102' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P58 R101 ; 58% complete, 101' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P58 R100 ; 58% complete, 100' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P59 R99 ; 59% complete, 99' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P59 R98 ; 59% complete, 98' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P60 R97 ; 60% complete, 97' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P60 R96 ; 60% complete, 96' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P60 R95 ; 60% complete, 95' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P61 R94 ; 61% complete, 94' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P61 R93 ; 61% complete, 93' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P62 R92 ; 62% complete, 92' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P62 R91 ; 62% complete, 91' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P63 R90 ; 63% complete, 90' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P63 R89 ; 63% complete, 89' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P63 R88 ; 63% complete, 88' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P64 R87 ; 64% complete, 87' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P64 R86 ; 64% complete, 86' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P65 R85 ; 65% complete, 85' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P65 R84 ; 65% complete, 84' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P65 R83 ; 65% complete, 83' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P66 R82 ; 66% complete, 82' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P66 R81 ; 66% complete, 81' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P67 R80 ; 67% complete, 80' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P67 R79 ; 67% complete, 79' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P68 R78 ; 68% complete, 78' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P68 R77 ; 68% complete, 77' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P68 R76 ; 68% complete, 76' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P69 R75 ; 69% complete, 75' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P69 R74 ; 69% complete, 74' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P70 R73 ; 70% complete, 73' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P70 R72 ; 70% complete, 72' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P70 R71 ; 70% complete, 71' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P71 R70 ; 71% complete, 70' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P71 R69 ; 71% complete, 69' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P72 R68 ; 72% complete, 68' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P72 R67 ; 72% complete, 67' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P73 R66 ; 73% complete, 66' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P73 R65 ; 73% complete, 65' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P73 R64 ; 73% complete, 64' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P74 R63 ; 74% complete, 63' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P74 R62 ; 74% complete, 62' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P75 R61 ; 75% complete, 61' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P75 R60 ; 75% complete, 60' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P75 R59 ; 75% complete, 59' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P76 R58 ; 76% complete, 58' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P76 R57 ; 76% complete, 57' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P77 R56 ; 77% complete, 56' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P77 R55 ; 77% complete, 55' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P78 R54 ; 78% complete, 54' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P78 R53 ; 78% complete, 53' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P78 R52 ; 78% complete, 52' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P79 R51 ; 79% complete, 51' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P79 R50 ; 79% complete, 50' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P80 R49 ; 80% complete, 49' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P80 R48 ; 80% complete, 48' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P80 R47 ; 80% complete, 47' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P81 R46 ; 81% complete, 46' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P81 R45 ; 81% complete, 45' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P82 R44 ; 82% complete, 44' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P82 R43 ; 82% complete, 43' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P83 R42 ; 83% complete, 42' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P83 R41 ; 83% complete, 41' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P83 R40 ; 83% complete, 40' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P84 R39 ; 84% complete, 39' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P84 R38 ; 84% complete, 38' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P85 R37 ; 85% complete, 37' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P85 R36 ; 85% complete, 36' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P85 R35 ; 85% complete, 35' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P86 R34 ; 86% complete, 34' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P86 R33 ; 86% complete, 33' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P87 R32 ; 87% complete, 32' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P87 R31 ; 87% complete, 31' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P88 R30 ; 88% complete, 30' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P88 R29 ; 88% complete, 29' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P88 R28 ; 88% complete, 28' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P89 R27 ; 89% complete, 27' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P89 R26 ; 89% complete, 26' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P90 R25 ; 90% complete, 25' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P90 R24 ; 90% complete, 24' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P90 R23 ; 90% complete, 23' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P91 R22 ; 91% complete, 22' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P91 R21 ; 91% complete, 21' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P92 R20 ; 92% complete, 20' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P92 R19 ; 92% complete, 19' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P93 R18 ; 93% complete, 18' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P93 R17 ; 93% complete, 17' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P93 R16 ; 93% complete, 16' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P94 R15 ; 94% complete, 15' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P94 R14 ; 94% complete, 14' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P95 R13 ; 95% complete, 13' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P95 R12 ; 95% complete, 12' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P95 R11 ; 95% complete, 11' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P96 R10 ; 96% complete, 10' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P96 R9 ; 96% complete, 9' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P97 R8 ; 97% complete, 8' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P97 R7 ; 97% complete, 7' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P98 R6 ; 98% complete, 6' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P98 R5 ; 98% complete, 5' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P98 R4 ; 98% complete, 4' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P99 R3 ; 99% complete, 3' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P99 R2 ; 99% complete, 2' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

M73 P100 R1 ; 100% complete, 1' remaining
M140 S110 ; set bed temp
G4 S60 ; wait a minute

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

