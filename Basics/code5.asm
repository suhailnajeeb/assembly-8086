CODE SEGMENT
ASSUME CS:CODE, DS:CODE

ORG 1000H
MOV AX, CS
MOV DS, AX

ORG 0000H
A DW 7F4EH; 0000H
B DW 1ABCH; 0002H
C DB 10H; 0004H

CODE ENDS
END

0000H: A 7FH
0001H: A 4EH
0002H: B 1AH
0003H: B 0BCH
0004H: C 10H