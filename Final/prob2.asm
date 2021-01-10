; Assembly code to AVERAGE the contents of an Array
; Store the nearest integers result in AX



LEA SI, W
MOV CX, 10

PUSH CX

ADDNO:
    ADD AX,[SI];    AX = AX + W[i]
    ADD SI, 2;      SI = SI + 2
    LOOP ADDNO

; AVERAGE = SUM/N
; AVERAGE = AX/CX

POP CX

; CWD AX;       for signed numbers
XOR DX, DX;     for unsigned numbers
DIV CX
;IDIV CX


; Nearest Integer result wil be stored in AX

W DW 10, 20, 30, 40, 50, 60, 70, 80, 90, 100