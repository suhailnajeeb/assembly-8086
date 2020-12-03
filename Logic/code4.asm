CODE SEGMENT
ASSUME CS:CODE, DS:CODE

ORG 1000H
MOV AX, CS
MOV DS, AX

;Set the most significant and least significant bits of AL
;While preserving the other bits

; AL    =     00110100 (34H)
; Mask  =     10000001 (81H)
; Result=     10110101

MOV AL, 34H
OR AL, 81H

;Set the most significant and least significant bits of AX
;While preserving the other bits

; 1000 0000 0000 0001 -> Mask 8001H

OR AX, 8001H

; Preserve the 4th, 8th, 12th, and 16th bits of AX and Set the other bits

; 0111 0111 0111 0111 -> Mask 7777H

OR AX, 7777H

CODE ENDS
END