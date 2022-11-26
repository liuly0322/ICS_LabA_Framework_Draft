.ORIG x3000
     LD R5, MOD
     ADD R3, R3, #1
     ADD R0, R0, #-1
     BRnz OUTL
     ADD R3, R3, #1
     ADD R0, R0, #-1
     BRz OUTL
     ADD R1, R1, #1
     ADD R2, R2, #1

LOOP ADD R4, R1, R1
     ADD R1, R2, #0
     ADD R2, R3, #0
     ADD R3, R4, R3
     ADD R0, R0, #-1
     BRp LOOP
OUTL AND R7, R3, R5
     TRAP x25
MOD  .FILL #1023
a    .FILL #930
b    .FILL #246
c    .FILL #742
d    .FILL #178
     .END
