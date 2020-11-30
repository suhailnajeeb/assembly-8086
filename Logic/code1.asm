CODE SEGMENT
ASSUME CS:CODE, DS:CODE

ORG 1000H
MOV AX, CS
MOV DS, AX

; Clear the sign bit of AL while leaving the other bits unchanged


;0101 1101 1010 1111
;0000 0000 0111 1111 - MASK (7FH)
;--------------------
;0000 0000 0010 1111

MOV AX, 5DAF
AND AX, 7FH

; Clear the sign bit of AX while leaving the other bits unchanged

;1101 1101 1010 1111
;0111 1111 1111 1111 - MASK (7FFFH)
;--------------------
;0101 1101 1010 1111

MOV AX, 0DDAFH
AND AX, 7FFFH

; Clear the Lower Bits of AX

;1101 1101 1010 1111
;1111 1111 0000 0000 - MASK (FF00H)
;--------------------
;1101 1101 0000 0000

MOV AX, 0DDAFH
AND AX, 0FF00H

CODE ENDS
END