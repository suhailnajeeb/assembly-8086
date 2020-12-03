CODE SEGMENT
ASSUME CS:CODE, DS:CODE

ORG 1000H
MOV AX, CS
MOV DS, AX

; Jump to label BELOW if AL contains an even number

;38D => 0010 0110B      even
;37D => 0010 0101B      odd
;36D => 0010 0100B      even

; 37D       0010 0101
; Mask      0000 0001
; TEST      0000 0001
; ZF = 0
; if the number is odd, ZF = 0

; 36D       0010 0100
; Mask      0000 0001
; TEST      0000 0000
; ZF = 1
; if the number is even, ZF = 1

MOV AL, 37D
TEST AL, 01H
JZ BELOW

...
...


BELOW:  ...
        ...

CODE ENDS
END