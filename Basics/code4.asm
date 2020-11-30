CODE SEGMENT
ASSUME CS:CODE, DS:CODE

ORG 1000H
MOV AX, CS
MOV DS, AX

; CODE
; Say, you have three variables A, B, C and D in the memory.
; Write an assembly program to calculate A - B + C - D and store it in R.

; (((A-B) + C) - D)

MOV AX, A
MOV BX, B
MOV CX, C
MOV DX, D

SUB AX, BX; AX = A - B
ADD AX, CX; AX = (A-B) + C
SUB AX, DX; AX = ((A-B) + C) - D

MOV R, AX

HLT; INT 3

;DATA
ORG 1200H
A DW 0FAE8H
B DW 12ABH
C DW 2321H
D DW 1213H
R DW ?

CODE ENDS
END