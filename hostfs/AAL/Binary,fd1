REM Printing binary

number = 0
mask = 1

DIM Binary 256
P%=Binary
[
MOV mask,#1<<31
.bits
TST number,mask
SWIEQ 256+ASC"0"
SWINE 256+ASC"1"
MOVS mask,mask,LSR#1
BNE bits
SWI "OS_NewLine"
MOV PC,R14
]

INPUT A%
CALL Binary
