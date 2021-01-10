; Write a procedure to Reverse a word array
; Stored in memory Location SI
; No. of Elements: CX

REVERSE PROC
; Reverse a Word Array
; Arguments: SI -> Location of Array, CX -> No. of Elements

; Registers Used: AX, BX, CX, DX, SI

PUSH AX
PUSH BX
PUSH CX
PUSH DX
PUSH SI


MOV BX, SI
MOV DX, CX

L1: 
    MOV AX, [SI]
    ADD SI, 2
    PUSH AX
    LOOP L1

MOV SI, BX
MOV CX, DX

L2:
    POP AX
    MOV [SI], AX
    ADD SI, 2
    LOOP L2

RET

POP SI
POP DX
POP CX
POP BX
POP AX

REVERSE ENDP


; MAIN PROGRAM


LEA SI, DI
MOV CX, 10

CALL REVERSE

LEA SI, Q
MOV CX, 8

CALL REVERSE

W DW 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
Q DW 1, 2, 4, 5, 6, 7, 8