; Assembly code to SUm the contents of an array
; Let, Word Array W is stored in memor
; Let, No. of contents/size = 10
; Store the SUM in AX

XOR AX, AX;     AX = 0
LEA SI, W
MOV CX, 10

ADDNO:
    ADD AX,[SI];    AX = AX + W[i]
    ADD SI, 2;      SI = SI + 2
    LOOP ADDNO

; Result is stored in AX

INT 3

W DW 10, 20, 30, 40, 50, 60, 70, 80, 90, 100

;--------------------------------------------

[SI] -> 10
[SI + 2] -> 20
[SI + 4] -> 30
[SI + 6] -> 40