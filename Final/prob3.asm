; Program to Reverse Array

LEA SI, W
MOV CX, 10

L1:
    MOV AX, [SI]
    PUSH AX
    ADD SI, 2
    LOOP L1

LEA SI, W
MOV CX, 10

L2: 
    POP AX
    MOV [SI], AX
    ADD SI, 2
    LOOP L2

INT 3

W DW 10, 20, 30, 40, 50, 60, 70, 80, 90, 100

;-----------------------------------------

STACK: 10 20 30 40 50 60 70 80 90 100