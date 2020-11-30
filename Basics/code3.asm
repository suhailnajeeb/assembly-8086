CODE SEGMENT
ASSUME CS:CODE, DS:CODE

ORG 1000H
MOV AX, CS
MOV DS, AX

; CODE
; Say, you have three variables A, B and C in the memory.
; Write an assembly program to calculate their sum and store it in C

MOV AX, A; AX = A
MOV BX, B; BX = B
ADD AX, BX; AX + BX => AX

MOV C, AX

HLT; INT 3

ORG 1200H
;DATA
A DW 0FAE8H
B DW 12ABH
C DW ?

CODE ENDS
END