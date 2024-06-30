DIM gcd 256
P% = gcd
[
.loop
CMP R0,R1
SUBGT R0,R0,R1
SUBLT R1,R1,R0
BNE loop
MOV PC,R14
]

INPUT "NUMBER 1: " A%
INPUT "NUMBER 2: " B%
PRINT "Result of GCD is "; USR(gcd)

