; Write a Procedure to Calculate the SUM of an Array
; The Proedure will update the Register AX with SUM

SUM PROC
; Arguments: SI -> Location to the Array, CX -> Length of the Array

PUSH CX
PUSH SI

XOR AX, AX

ADDNO:
    ADD AX, [SI]
    ADD SI, 2
    LOOP ADDNO

POP SI
POP CX

RET
SUM ENDP