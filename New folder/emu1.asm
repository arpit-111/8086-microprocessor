
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   
#IMMEDIATE ADDRESSING MODE
 
;mov cx,1840H
;mov bl,98H      
;mov dx,143H

#REGISTER ADDRESSING MODE  
;MOV AX,023H
;MOV BX,010H
;;MOV DX,AX    
;ADD CX,DX

#DIRECT ADDRESSING MODE
;MOV AX,1005H
;MOV DS,,AX
;MOV CX,23
;MOV [010H],CX
;MOV BX,[010H]       


#BASED ADDRESSING MODE     

;MOV BX,2010H
;MOV [0069H],0023H
;MOV AX, [BX+04H]

#INDEXED ADDRESSING MODE
;MOV [0022H],0100H
;MOV SI, 0010H
;MOV AX,[SI+012H]        

#BASE INDEX ADDRESSING MODE  

;MOV [0033H],0110H
;MOV SI,0010H
;MOV BX,0011H
;MOV AX,[BX+SI+012H]


# REGISTER INDIRECT ADDRESSING MODE

MOV AX,0708H
MOV DS,AX
MOV CX,0154H
MOV SI,422H
MOV [SI],CX
ret




