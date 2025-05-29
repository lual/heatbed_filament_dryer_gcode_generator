M73 P0 R300 ; Percent complete and time remaining on LCD screen
; Display text on LCD screen
M117 "Drying PLA Filament"
;M1 Print Bed is clear?; wait for user aknowledge - DOES NOT WORK

M201 X4000 Y4000 Z200 E2500 ; sets maximum accelerations, mm/sec^2
M203 X300 Y300 Z40 E100 ; sets maximum feedrates, mm / sec
M204 P4000 R1200 T4000 ; sets acceleration (P, T) and retract acceleration (R), mm/sec^2
M205 X8.00 Y8.00 Z2.00 E10.00 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec

M486 S0
M486 ADrying TPU Filament
M486 S-1


M107 ; Disable part fan
M104 S0 ; Turn off extruder heater
M862.3 P "MK3.9" ; printer model check
M862.5 P2 ; g-code level check

G90 ; Use absolute coordinates for the next moves

M140 S60 ; set bed temp

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

M73 P0 R300 ; 0% complete, 300' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P0 R299 ; 0% complete, 299' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P1 R298 ; 1% complete, 298' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P1 R297 ; 1% complete, 297' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P1 R296 ; 1% complete, 296' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P2 R295 ; 2% complete, 295' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P2 R294 ; 2% complete, 294' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P2 R293 ; 2% complete, 293' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P3 R292 ; 3% complete, 292' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P3 R291 ; 3% complete, 291' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P3 R290 ; 3% complete, 290' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P4 R289 ; 4% complete, 289' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P4 R288 ; 4% complete, 288' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P4 R287 ; 4% complete, 287' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P5 R286 ; 5% complete, 286' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P5 R285 ; 5% complete, 285' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P5 R284 ; 5% complete, 284' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P6 R283 ; 6% complete, 283' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P6 R282 ; 6% complete, 282' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P6 R281 ; 6% complete, 281' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P7 R280 ; 7% complete, 280' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P7 R279 ; 7% complete, 279' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P7 R278 ; 7% complete, 278' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P8 R277 ; 8% complete, 277' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P8 R276 ; 8% complete, 276' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P8 R275 ; 8% complete, 275' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P9 R274 ; 9% complete, 274' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P9 R273 ; 9% complete, 273' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P9 R272 ; 9% complete, 272' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P10 R271 ; 10% complete, 271' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P10 R270 ; 10% complete, 270' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P10 R269 ; 10% complete, 269' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P11 R268 ; 11% complete, 268' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P11 R267 ; 11% complete, 267' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P11 R266 ; 11% complete, 266' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P12 R265 ; 12% complete, 265' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P12 R264 ; 12% complete, 264' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P12 R263 ; 12% complete, 263' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P13 R262 ; 13% complete, 262' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P13 R261 ; 13% complete, 261' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P13 R260 ; 13% complete, 260' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P14 R259 ; 14% complete, 259' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P14 R258 ; 14% complete, 258' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P14 R257 ; 14% complete, 257' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P15 R256 ; 15% complete, 256' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P15 R255 ; 15% complete, 255' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P15 R254 ; 15% complete, 254' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P16 R253 ; 16% complete, 253' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P16 R252 ; 16% complete, 252' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P16 R251 ; 16% complete, 251' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P17 R250 ; 17% complete, 250' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P17 R249 ; 17% complete, 249' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P17 R248 ; 17% complete, 248' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P18 R247 ; 18% complete, 247' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P18 R246 ; 18% complete, 246' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P18 R245 ; 18% complete, 245' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P19 R244 ; 19% complete, 244' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P19 R243 ; 19% complete, 243' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P19 R242 ; 19% complete, 242' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P20 R241 ; 20% complete, 241' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P20 R240 ; 20% complete, 240' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P20 R239 ; 20% complete, 239' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P21 R238 ; 21% complete, 238' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P21 R237 ; 21% complete, 237' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P21 R236 ; 21% complete, 236' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P22 R235 ; 22% complete, 235' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P22 R234 ; 22% complete, 234' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P22 R233 ; 22% complete, 233' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P23 R232 ; 23% complete, 232' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P23 R231 ; 23% complete, 231' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P23 R230 ; 23% complete, 230' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P24 R229 ; 24% complete, 229' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P24 R228 ; 24% complete, 228' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P24 R227 ; 24% complete, 227' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P25 R226 ; 25% complete, 226' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P25 R225 ; 25% complete, 225' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P25 R224 ; 25% complete, 224' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P26 R223 ; 26% complete, 223' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P26 R222 ; 26% complete, 222' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P26 R221 ; 26% complete, 221' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P27 R220 ; 27% complete, 220' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P27 R219 ; 27% complete, 219' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P27 R218 ; 27% complete, 218' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P28 R217 ; 28% complete, 217' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P28 R216 ; 28% complete, 216' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P28 R215 ; 28% complete, 215' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P29 R214 ; 29% complete, 214' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P29 R213 ; 29% complete, 213' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P29 R212 ; 29% complete, 212' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P30 R211 ; 30% complete, 211' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P30 R210 ; 30% complete, 210' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P30 R209 ; 30% complete, 209' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P31 R208 ; 31% complete, 208' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P31 R207 ; 31% complete, 207' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P31 R206 ; 31% complete, 206' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P32 R205 ; 32% complete, 205' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P32 R204 ; 32% complete, 204' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P32 R203 ; 32% complete, 203' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P33 R202 ; 33% complete, 202' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P33 R201 ; 33% complete, 201' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P33 R200 ; 33% complete, 200' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P34 R199 ; 34% complete, 199' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P34 R198 ; 34% complete, 198' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P34 R197 ; 34% complete, 197' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P35 R196 ; 35% complete, 196' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P35 R195 ; 35% complete, 195' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P35 R194 ; 35% complete, 194' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P36 R193 ; 36% complete, 193' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P36 R192 ; 36% complete, 192' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P36 R191 ; 36% complete, 191' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P37 R190 ; 37% complete, 190' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P37 R189 ; 37% complete, 189' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P37 R188 ; 37% complete, 188' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P38 R187 ; 38% complete, 187' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P38 R186 ; 38% complete, 186' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P38 R185 ; 38% complete, 185' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P39 R184 ; 39% complete, 184' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P39 R183 ; 39% complete, 183' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P39 R182 ; 39% complete, 182' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P40 R181 ; 40% complete, 181' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P40 R180 ; 40% complete, 180' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P40 R179 ; 40% complete, 179' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P41 R178 ; 41% complete, 178' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P41 R177 ; 41% complete, 177' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P41 R176 ; 41% complete, 176' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P42 R175 ; 42% complete, 175' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P42 R174 ; 42% complete, 174' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P42 R173 ; 42% complete, 173' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P43 R172 ; 43% complete, 172' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P43 R171 ; 43% complete, 171' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P43 R170 ; 43% complete, 170' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P44 R169 ; 44% complete, 169' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P44 R168 ; 44% complete, 168' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P44 R167 ; 44% complete, 167' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P45 R166 ; 45% complete, 166' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P45 R165 ; 45% complete, 165' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P45 R164 ; 45% complete, 164' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P46 R163 ; 46% complete, 163' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P46 R162 ; 46% complete, 162' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P46 R161 ; 46% complete, 161' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P47 R160 ; 47% complete, 160' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P47 R159 ; 47% complete, 159' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P47 R158 ; 47% complete, 158' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P48 R157 ; 48% complete, 157' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P48 R156 ; 48% complete, 156' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P48 R155 ; 48% complete, 155' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P49 R154 ; 49% complete, 154' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P49 R153 ; 49% complete, 153' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P49 R152 ; 49% complete, 152' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P50 R151 ; 50% complete, 151' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P50 R150 ; 50% complete, 150' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P50 R149 ; 50% complete, 149' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P51 R148 ; 51% complete, 148' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P51 R147 ; 51% complete, 147' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P51 R146 ; 51% complete, 146' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P52 R145 ; 52% complete, 145' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P52 R144 ; 52% complete, 144' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P52 R143 ; 52% complete, 143' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P53 R142 ; 53% complete, 142' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P53 R141 ; 53% complete, 141' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P53 R140 ; 53% complete, 140' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P54 R139 ; 54% complete, 139' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P54 R138 ; 54% complete, 138' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P54 R137 ; 54% complete, 137' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P55 R136 ; 55% complete, 136' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P55 R135 ; 55% complete, 135' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P55 R134 ; 55% complete, 134' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P56 R133 ; 56% complete, 133' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P56 R132 ; 56% complete, 132' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P56 R131 ; 56% complete, 131' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P57 R130 ; 57% complete, 130' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P57 R129 ; 57% complete, 129' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P57 R128 ; 57% complete, 128' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P58 R127 ; 58% complete, 127' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P58 R126 ; 58% complete, 126' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P58 R125 ; 58% complete, 125' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P59 R124 ; 59% complete, 124' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P59 R123 ; 59% complete, 123' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P59 R122 ; 59% complete, 122' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P60 R121 ; 60% complete, 121' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P60 R120 ; 60% complete, 120' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P60 R119 ; 60% complete, 119' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P61 R118 ; 61% complete, 118' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P61 R117 ; 61% complete, 117' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P61 R116 ; 61% complete, 116' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P62 R115 ; 62% complete, 115' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P62 R114 ; 62% complete, 114' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P62 R113 ; 62% complete, 113' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P63 R112 ; 63% complete, 112' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P63 R111 ; 63% complete, 111' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P63 R110 ; 63% complete, 110' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P64 R109 ; 64% complete, 109' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P64 R108 ; 64% complete, 108' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P64 R107 ; 64% complete, 107' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P65 R106 ; 65% complete, 106' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P65 R105 ; 65% complete, 105' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P65 R104 ; 65% complete, 104' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P66 R103 ; 66% complete, 103' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P66 R102 ; 66% complete, 102' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P66 R101 ; 66% complete, 101' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P67 R100 ; 67% complete, 100' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P67 R99 ; 67% complete, 99' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P67 R98 ; 67% complete, 98' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P68 R97 ; 68% complete, 97' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P68 R96 ; 68% complete, 96' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P68 R95 ; 68% complete, 95' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P69 R94 ; 69% complete, 94' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P69 R93 ; 69% complete, 93' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P69 R92 ; 69% complete, 92' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P70 R91 ; 70% complete, 91' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P70 R90 ; 70% complete, 90' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P70 R89 ; 70% complete, 89' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P71 R88 ; 71% complete, 88' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P71 R87 ; 71% complete, 87' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P71 R86 ; 71% complete, 86' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P72 R85 ; 72% complete, 85' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P72 R84 ; 72% complete, 84' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P72 R83 ; 72% complete, 83' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P73 R82 ; 73% complete, 82' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P73 R81 ; 73% complete, 81' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P73 R80 ; 73% complete, 80' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P74 R79 ; 74% complete, 79' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P74 R78 ; 74% complete, 78' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P74 R77 ; 74% complete, 77' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P75 R76 ; 75% complete, 76' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P75 R75 ; 75% complete, 75' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P75 R74 ; 75% complete, 74' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P76 R73 ; 76% complete, 73' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P76 R72 ; 76% complete, 72' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P76 R71 ; 76% complete, 71' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P77 R70 ; 77% complete, 70' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P77 R69 ; 77% complete, 69' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P77 R68 ; 77% complete, 68' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P78 R67 ; 78% complete, 67' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P78 R66 ; 78% complete, 66' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P78 R65 ; 78% complete, 65' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P79 R64 ; 79% complete, 64' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P79 R63 ; 79% complete, 63' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P79 R62 ; 79% complete, 62' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P80 R61 ; 80% complete, 61' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P80 R60 ; 80% complete, 60' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P80 R59 ; 80% complete, 59' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P81 R58 ; 81% complete, 58' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P81 R57 ; 81% complete, 57' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P81 R56 ; 81% complete, 56' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P82 R55 ; 82% complete, 55' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P82 R54 ; 82% complete, 54' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P82 R53 ; 82% complete, 53' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P83 R52 ; 83% complete, 52' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P83 R51 ; 83% complete, 51' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P83 R50 ; 83% complete, 50' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P84 R49 ; 84% complete, 49' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P84 R48 ; 84% complete, 48' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P84 R47 ; 84% complete, 47' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P85 R46 ; 85% complete, 46' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P85 R45 ; 85% complete, 45' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P85 R44 ; 85% complete, 44' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P86 R43 ; 86% complete, 43' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P86 R42 ; 86% complete, 42' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P86 R41 ; 86% complete, 41' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P87 R40 ; 87% complete, 40' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P87 R39 ; 87% complete, 39' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P87 R38 ; 87% complete, 38' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P88 R37 ; 88% complete, 37' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P88 R36 ; 88% complete, 36' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P88 R35 ; 88% complete, 35' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P89 R34 ; 89% complete, 34' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P89 R33 ; 89% complete, 33' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P89 R32 ; 89% complete, 32' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P90 R31 ; 90% complete, 31' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P90 R30 ; 90% complete, 30' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P90 R29 ; 90% complete, 29' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P91 R28 ; 91% complete, 28' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P91 R27 ; 91% complete, 27' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P91 R26 ; 91% complete, 26' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P92 R25 ; 92% complete, 25' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P92 R24 ; 92% complete, 24' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P92 R23 ; 92% complete, 23' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P93 R22 ; 93% complete, 22' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P93 R21 ; 93% complete, 21' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P93 R20 ; 93% complete, 20' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P94 R19 ; 94% complete, 19' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P94 R18 ; 94% complete, 18' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P94 R17 ; 94% complete, 17' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P95 R16 ; 95% complete, 16' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P95 R15 ; 95% complete, 15' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P95 R14 ; 95% complete, 14' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P96 R13 ; 96% complete, 13' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P96 R12 ; 96% complete, 12' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P96 R11 ; 96% complete, 11' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P97 R10 ; 97% complete, 10' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P97 R9 ; 97% complete, 9' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P97 R8 ; 97% complete, 8' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P98 R7 ; 98% complete, 7' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P98 R6 ; 98% complete, 6' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P98 R5 ; 98% complete, 5' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P99 R4 ; 99% complete, 4' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P99 R3 ; 99% complete, 3' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P99 R2 ; 99% complete, 2' remaining
M140 S60 ; set bed temp
G4 S60 ; wait a minute

M73 P100 R1 ; 100% complete, 1' remaining
M140 S60 ; set bed temp
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

