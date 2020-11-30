CODE SEGMENT
ASSUME CS:CODE, DS:CODE

ORG 1000H
MOV AX, CS
MOV DS, AX

; CODE
; Say, you have two variables A and B in the memory.
; Write an assembly program to exchange these two variables in memory

MOV AX, A
MOV BX, B

XCHG AX, BX

MOV A, AX
MOV B, BX

HLT; INT 3

ORG 1200H
;DATA
A DW 0FAE8H
B DW 12ABH
;C DW 486EH

CODE ENDS
END