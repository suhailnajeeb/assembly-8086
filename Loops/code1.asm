If AL Contains 1 , set DX = 0.
If AL Contains 2 , set DX = 1,
if AL Contains 5 , set DX = 2.
Otherwise, exit the program. 

CASE: 'AL'
    1: DX = 0
    2: DX = 1
    5: DX = 2


CMP AL, 1
JE L1
CMP AL, 2
JE L2
CMP AL, 5
JE L5
JMP EXIT

L1: MOV DX, 0
    JMP EXIT
L2: MOV DX, 1
    JMP EXIT
L5: MOV DX, 2

EXIT: INT 3

...