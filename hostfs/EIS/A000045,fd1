REM;> FIBON
REM Fibonacci numbers
REM http://oeis.org/A000045

buflen = 64
DIM buffer buflen
DIM code 256
seqlen = 37
DIM seq 20 + seqlen * 4
P% = code
[

ADR R0,seq
MOV R1,#seqlen
MOV R3,#0     ; f(0) = 0, f(1) = 1
MOV R4,#1
STR R3,[R0,#4]!
STR R4,[R0,#4]!
.loop
ADD R5,R4,R3
MOV R3,R4
MOV R4,R5
STR R4,[R0,#4]!
SUBS R1,R1,#1
BNE loop

.print
ADR R5,seq
MOV R6,#seqlen
.printloop
LDR R0,[R5,#4]!
ADR R1,buffer
MOV R2,#buflen
SWI "OS_ConvertSpacedInteger4"
SWI "OS_Write0"
SWI "OS_NewLine"
SUBS R6,R6,#1
BNE printloop

MOV PC,R14
]

CALL(code)


