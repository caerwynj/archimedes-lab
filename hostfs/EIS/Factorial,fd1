REM;> Factorial integer squence

DIM code 256

buflen = 64
DIM buffer buflen

FOR pass = 0 TO 3 STEP 3
P%=code
[
OPT pass

PUSH {R14}

MOV R3,#1
MOV R0,R3
.loop
MUL R0,R3,R0
MOV R4,R0
BL print
MOV R0,R4
ADD R3,R3,#1
CMP R3,#12
BNE loop
SWI "OS_NewLine"
POP {R14}
MOV PC,R14

.print
ADR R1,buffer
MOV R2,#buflen
SWI "OS_ConvertSpacedInteger4"
SWI "OS_Write0"
SWI "OS_NewLine"
MOV PC,R14

]
NEXT pass

PRINT USR(code)
REM CALL code
