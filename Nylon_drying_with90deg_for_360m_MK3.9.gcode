M73 P0 R360 ; Percent complete and time remaining on LCD screen
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

M140 S90 ; set bed temp

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

M73 P0 R360 ; 0% complete, 360' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P0 R359 ; 0% complete, 359' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P1 R358 ; 1% complete, 358' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P1 R357 ; 1% complete, 357' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P1 R356 ; 1% complete, 356' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P1 R355 ; 1% complete, 355' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P2 R354 ; 2% complete, 354' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P2 R353 ; 2% complete, 353' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P2 R352 ; 2% complete, 352' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P3 R351 ; 3% complete, 351' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P3 R350 ; 3% complete, 350' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P3 R349 ; 3% complete, 349' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P3 R348 ; 3% complete, 348' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P4 R347 ; 4% complete, 347' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P4 R346 ; 4% complete, 346' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P4 R345 ; 4% complete, 345' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P4 R344 ; 4% complete, 344' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P5 R343 ; 5% complete, 343' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P5 R342 ; 5% complete, 342' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P5 R341 ; 5% complete, 341' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P6 R340 ; 6% complete, 340' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P6 R339 ; 6% complete, 339' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P6 R338 ; 6% complete, 338' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P6 R337 ; 6% complete, 337' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P7 R336 ; 7% complete, 336' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P7 R335 ; 7% complete, 335' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P7 R334 ; 7% complete, 334' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P8 R333 ; 8% complete, 333' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P8 R332 ; 8% complete, 332' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P8 R331 ; 8% complete, 331' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P8 R330 ; 8% complete, 330' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P9 R329 ; 9% complete, 329' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P9 R328 ; 9% complete, 328' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P9 R327 ; 9% complete, 327' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P9 R326 ; 9% complete, 326' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P10 R325 ; 10% complete, 325' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P10 R324 ; 10% complete, 324' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P10 R323 ; 10% complete, 323' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P11 R322 ; 11% complete, 322' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P11 R321 ; 11% complete, 321' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P11 R320 ; 11% complete, 320' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P11 R319 ; 11% complete, 319' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P12 R318 ; 12% complete, 318' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P12 R317 ; 12% complete, 317' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P12 R316 ; 12% complete, 316' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P13 R315 ; 13% complete, 315' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P13 R314 ; 13% complete, 314' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P13 R313 ; 13% complete, 313' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P13 R312 ; 13% complete, 312' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P14 R311 ; 14% complete, 311' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P14 R310 ; 14% complete, 310' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P14 R309 ; 14% complete, 309' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P14 R308 ; 14% complete, 308' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P15 R307 ; 15% complete, 307' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P15 R306 ; 15% complete, 306' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P15 R305 ; 15% complete, 305' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P16 R304 ; 16% complete, 304' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P16 R303 ; 16% complete, 303' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P16 R302 ; 16% complete, 302' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P16 R301 ; 16% complete, 301' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P17 R300 ; 17% complete, 300' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P17 R299 ; 17% complete, 299' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P17 R298 ; 17% complete, 298' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P18 R297 ; 18% complete, 297' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P18 R296 ; 18% complete, 296' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P18 R295 ; 18% complete, 295' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P18 R294 ; 18% complete, 294' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P19 R293 ; 19% complete, 293' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P19 R292 ; 19% complete, 292' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P19 R291 ; 19% complete, 291' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P19 R290 ; 19% complete, 290' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P20 R289 ; 20% complete, 289' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P20 R288 ; 20% complete, 288' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P20 R287 ; 20% complete, 287' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P21 R286 ; 21% complete, 286' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P21 R285 ; 21% complete, 285' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P21 R284 ; 21% complete, 284' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P21 R283 ; 21% complete, 283' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P22 R282 ; 22% complete, 282' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P22 R281 ; 22% complete, 281' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P22 R280 ; 22% complete, 280' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P23 R279 ; 23% complete, 279' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P23 R278 ; 23% complete, 278' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P23 R277 ; 23% complete, 277' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P23 R276 ; 23% complete, 276' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P24 R275 ; 24% complete, 275' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P24 R274 ; 24% complete, 274' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P24 R273 ; 24% complete, 273' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P24 R272 ; 24% complete, 272' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P25 R271 ; 25% complete, 271' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P25 R270 ; 25% complete, 270' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P25 R269 ; 25% complete, 269' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P26 R268 ; 26% complete, 268' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P26 R267 ; 26% complete, 267' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P26 R266 ; 26% complete, 266' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P26 R265 ; 26% complete, 265' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P27 R264 ; 27% complete, 264' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P27 R263 ; 27% complete, 263' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P27 R262 ; 27% complete, 262' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P28 R261 ; 28% complete, 261' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P28 R260 ; 28% complete, 260' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P28 R259 ; 28% complete, 259' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P28 R258 ; 28% complete, 258' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P29 R257 ; 29% complete, 257' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P29 R256 ; 29% complete, 256' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P29 R255 ; 29% complete, 255' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P29 R254 ; 29% complete, 254' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P30 R253 ; 30% complete, 253' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P30 R252 ; 30% complete, 252' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P30 R251 ; 30% complete, 251' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P31 R250 ; 31% complete, 250' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P31 R249 ; 31% complete, 249' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P31 R248 ; 31% complete, 248' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P31 R247 ; 31% complete, 247' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P32 R246 ; 32% complete, 246' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P32 R245 ; 32% complete, 245' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P32 R244 ; 32% complete, 244' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P33 R243 ; 33% complete, 243' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P33 R242 ; 33% complete, 242' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P33 R241 ; 33% complete, 241' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P33 R240 ; 33% complete, 240' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P34 R239 ; 34% complete, 239' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P34 R238 ; 34% complete, 238' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P34 R237 ; 34% complete, 237' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P34 R236 ; 34% complete, 236' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P35 R235 ; 35% complete, 235' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P35 R234 ; 35% complete, 234' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P35 R233 ; 35% complete, 233' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P36 R232 ; 36% complete, 232' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P36 R231 ; 36% complete, 231' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P36 R230 ; 36% complete, 230' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P36 R229 ; 36% complete, 229' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P37 R228 ; 37% complete, 228' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P37 R227 ; 37% complete, 227' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P37 R226 ; 37% complete, 226' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P38 R225 ; 38% complete, 225' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P38 R224 ; 38% complete, 224' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P38 R223 ; 38% complete, 223' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P38 R222 ; 38% complete, 222' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P39 R221 ; 39% complete, 221' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P39 R220 ; 39% complete, 220' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P39 R219 ; 39% complete, 219' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P39 R218 ; 39% complete, 218' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P40 R217 ; 40% complete, 217' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P40 R216 ; 40% complete, 216' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P40 R215 ; 40% complete, 215' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P41 R214 ; 41% complete, 214' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P41 R213 ; 41% complete, 213' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P41 R212 ; 41% complete, 212' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P41 R211 ; 41% complete, 211' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P42 R210 ; 42% complete, 210' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P42 R209 ; 42% complete, 209' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P42 R208 ; 42% complete, 208' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P43 R207 ; 43% complete, 207' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P43 R206 ; 43% complete, 206' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P43 R205 ; 43% complete, 205' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P43 R204 ; 43% complete, 204' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P44 R203 ; 44% complete, 203' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P44 R202 ; 44% complete, 202' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P44 R201 ; 44% complete, 201' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P44 R200 ; 44% complete, 200' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P45 R199 ; 45% complete, 199' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P45 R198 ; 45% complete, 198' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P45 R197 ; 45% complete, 197' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P46 R196 ; 46% complete, 196' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P46 R195 ; 46% complete, 195' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P46 R194 ; 46% complete, 194' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P46 R193 ; 46% complete, 193' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P47 R192 ; 47% complete, 192' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P47 R191 ; 47% complete, 191' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P47 R190 ; 47% complete, 190' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P48 R189 ; 48% complete, 189' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P48 R188 ; 48% complete, 188' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P48 R187 ; 48% complete, 187' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P48 R186 ; 48% complete, 186' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P49 R185 ; 49% complete, 185' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P49 R184 ; 49% complete, 184' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P49 R183 ; 49% complete, 183' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P49 R182 ; 49% complete, 182' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P50 R181 ; 50% complete, 181' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P50 R180 ; 50% complete, 180' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P50 R179 ; 50% complete, 179' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P51 R178 ; 51% complete, 178' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P51 R177 ; 51% complete, 177' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P51 R176 ; 51% complete, 176' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P51 R175 ; 51% complete, 175' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P52 R174 ; 52% complete, 174' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P52 R173 ; 52% complete, 173' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P52 R172 ; 52% complete, 172' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P53 R171 ; 53% complete, 171' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P53 R170 ; 53% complete, 170' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P53 R169 ; 53% complete, 169' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P53 R168 ; 53% complete, 168' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P54 R167 ; 54% complete, 167' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P54 R166 ; 54% complete, 166' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P54 R165 ; 54% complete, 165' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P54 R164 ; 54% complete, 164' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P55 R163 ; 55% complete, 163' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P55 R162 ; 55% complete, 162' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P55 R161 ; 55% complete, 161' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P56 R160 ; 56% complete, 160' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P56 R159 ; 56% complete, 159' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P56 R158 ; 56% complete, 158' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P56 R157 ; 56% complete, 157' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P57 R156 ; 57% complete, 156' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P57 R155 ; 57% complete, 155' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P57 R154 ; 57% complete, 154' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P57 R153 ; 57% complete, 153' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P58 R152 ; 58% complete, 152' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P58 R151 ; 58% complete, 151' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P58 R150 ; 58% complete, 150' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P59 R149 ; 59% complete, 149' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P59 R148 ; 59% complete, 148' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P59 R147 ; 59% complete, 147' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P59 R146 ; 59% complete, 146' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P60 R145 ; 60% complete, 145' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P60 R144 ; 60% complete, 144' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P60 R143 ; 60% complete, 143' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P61 R142 ; 61% complete, 142' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P61 R141 ; 61% complete, 141' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P61 R140 ; 61% complete, 140' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P61 R139 ; 61% complete, 139' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P62 R138 ; 62% complete, 138' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P62 R137 ; 62% complete, 137' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P62 R136 ; 62% complete, 136' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P63 R135 ; 63% complete, 135' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P63 R134 ; 63% complete, 134' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P63 R133 ; 63% complete, 133' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P63 R132 ; 63% complete, 132' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P64 R131 ; 64% complete, 131' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P64 R130 ; 64% complete, 130' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P64 R129 ; 64% complete, 129' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P64 R128 ; 64% complete, 128' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P65 R127 ; 65% complete, 127' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P65 R126 ; 65% complete, 126' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P65 R125 ; 65% complete, 125' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P66 R124 ; 66% complete, 124' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P66 R123 ; 66% complete, 123' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P66 R122 ; 66% complete, 122' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P66 R121 ; 66% complete, 121' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P67 R120 ; 67% complete, 120' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P67 R119 ; 67% complete, 119' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P67 R118 ; 67% complete, 118' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P68 R117 ; 68% complete, 117' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P68 R116 ; 68% complete, 116' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P68 R115 ; 68% complete, 115' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P68 R114 ; 68% complete, 114' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P69 R113 ; 69% complete, 113' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P69 R112 ; 69% complete, 112' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P69 R111 ; 69% complete, 111' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P69 R110 ; 69% complete, 110' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P70 R109 ; 70% complete, 109' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P70 R108 ; 70% complete, 108' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P70 R107 ; 70% complete, 107' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P71 R106 ; 71% complete, 106' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P71 R105 ; 71% complete, 105' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P71 R104 ; 71% complete, 104' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P71 R103 ; 71% complete, 103' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P72 R102 ; 72% complete, 102' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P72 R101 ; 72% complete, 101' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P72 R100 ; 72% complete, 100' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P73 R99 ; 73% complete, 99' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P73 R98 ; 73% complete, 98' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P73 R97 ; 73% complete, 97' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P73 R96 ; 73% complete, 96' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P74 R95 ; 74% complete, 95' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P74 R94 ; 74% complete, 94' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P74 R93 ; 74% complete, 93' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P74 R92 ; 74% complete, 92' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P75 R91 ; 75% complete, 91' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P75 R90 ; 75% complete, 90' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P75 R89 ; 75% complete, 89' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P76 R88 ; 76% complete, 88' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P76 R87 ; 76% complete, 87' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P76 R86 ; 76% complete, 86' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P76 R85 ; 76% complete, 85' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P77 R84 ; 77% complete, 84' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P77 R83 ; 77% complete, 83' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P77 R82 ; 77% complete, 82' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P78 R81 ; 78% complete, 81' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P78 R80 ; 78% complete, 80' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P78 R79 ; 78% complete, 79' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P78 R78 ; 78% complete, 78' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P79 R77 ; 79% complete, 77' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P79 R76 ; 79% complete, 76' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P79 R75 ; 79% complete, 75' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P79 R74 ; 79% complete, 74' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P80 R73 ; 80% complete, 73' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P80 R72 ; 80% complete, 72' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P80 R71 ; 80% complete, 71' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P81 R70 ; 81% complete, 70' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P81 R69 ; 81% complete, 69' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P81 R68 ; 81% complete, 68' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P81 R67 ; 81% complete, 67' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P82 R66 ; 82% complete, 66' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P82 R65 ; 82% complete, 65' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P82 R64 ; 82% complete, 64' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P83 R63 ; 83% complete, 63' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P83 R62 ; 83% complete, 62' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P83 R61 ; 83% complete, 61' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P83 R60 ; 83% complete, 60' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P84 R59 ; 84% complete, 59' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P84 R58 ; 84% complete, 58' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P84 R57 ; 84% complete, 57' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P84 R56 ; 84% complete, 56' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P85 R55 ; 85% complete, 55' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P85 R54 ; 85% complete, 54' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P85 R53 ; 85% complete, 53' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P86 R52 ; 86% complete, 52' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P86 R51 ; 86% complete, 51' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P86 R50 ; 86% complete, 50' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P86 R49 ; 86% complete, 49' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P87 R48 ; 87% complete, 48' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P87 R47 ; 87% complete, 47' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P87 R46 ; 87% complete, 46' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P88 R45 ; 88% complete, 45' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P88 R44 ; 88% complete, 44' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P88 R43 ; 88% complete, 43' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P88 R42 ; 88% complete, 42' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P89 R41 ; 89% complete, 41' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P89 R40 ; 89% complete, 40' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P89 R39 ; 89% complete, 39' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P89 R38 ; 89% complete, 38' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P90 R37 ; 90% complete, 37' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P90 R36 ; 90% complete, 36' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P90 R35 ; 90% complete, 35' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P91 R34 ; 91% complete, 34' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P91 R33 ; 91% complete, 33' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P91 R32 ; 91% complete, 32' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P91 R31 ; 91% complete, 31' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P92 R30 ; 92% complete, 30' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P92 R29 ; 92% complete, 29' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P92 R28 ; 92% complete, 28' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P93 R27 ; 93% complete, 27' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P93 R26 ; 93% complete, 26' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P93 R25 ; 93% complete, 25' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P93 R24 ; 93% complete, 24' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P94 R23 ; 94% complete, 23' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P94 R22 ; 94% complete, 22' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P94 R21 ; 94% complete, 21' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P94 R20 ; 94% complete, 20' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P95 R19 ; 95% complete, 19' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P95 R18 ; 95% complete, 18' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P95 R17 ; 95% complete, 17' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P96 R16 ; 96% complete, 16' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P96 R15 ; 96% complete, 15' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P96 R14 ; 96% complete, 14' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P96 R13 ; 96% complete, 13' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P97 R12 ; 97% complete, 12' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P97 R11 ; 97% complete, 11' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P97 R10 ; 97% complete, 10' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P98 R9 ; 98% complete, 9' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P98 R8 ; 98% complete, 8' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P98 R7 ; 98% complete, 7' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P98 R6 ; 98% complete, 6' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P99 R5 ; 99% complete, 5' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P99 R4 ; 99% complete, 4' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P99 R3 ; 99% complete, 3' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P99 R2 ; 99% complete, 2' remaining
M140 S90 ; set bed temp
G4 S60 ; wait a minute

M73 P100 R1 ; 100% complete, 1' remaining
M140 S90 ; set bed temp
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

