Put the Sum of the first 10 terms of the sequence 1, 3, 5, 7, … in DX. 


DX = 1 + 3 + 5  ... 

....

XOR DX, DX;     DX = 0
MOV BX, 1;      BX = 1
MOV CX, 10;     CX = 10

TOP:    ADD DX, BX
        ADD BX, 2; BX = BX + 2
        LOOP TOP

EXIT:   INT 3



...