
; A prgm to find out largest no.of from unordered 16 bit stored in location  starting from a know address

org 100h

; add your code here

 MOV AX,6000H;
 MOV DS,AX
 MOV AX,30H
 MOV BX,1000H
 MOV CX,66H
 ARRAY1:MOV [BX],AX
 ADD AX,50D
 INC BX
 LOOP ARRAY1
 MOV BX,1000H
 MOV AX,[BX]
 MOV CX,1FH
 L1: CMP AX,[BX+1]
 JNC L2
 MOV AX,[BX+1]
 L2: INC BX;
 LOOP L1
 MOV [0FFFH],AX
ret




