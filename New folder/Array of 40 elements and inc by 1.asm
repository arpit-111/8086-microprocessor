;TAKE ARRAY OF 40 ELEMENTS AND INCREMENT EACH BY 1 ?

 ORG 100H;
 MOV AX,6000H;
 MOV DS,AX;
 
 MOV AX,3000H;
 MOV ES,AX;
 ARR DB 40;
 MOV CX,40;
 MOV AL,01H;
 MOV BX,OFFSET ARR;
 LAST:MOV[BX],AL;
      INC BX;
      INC AL;
      LOOP LAST
 
 MOV BX,OFFSET ARR
 MOV CX,40;
 NEXT:MOV AL,[BX];
 INC AL;
 MOV[BX],AL;
 INC BX
 LOOP NEXT





