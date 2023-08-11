
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;mov ax,032h
;mov bx,0fh
;mov [1324h],ax
;mov [6411h],bx 
;
;add ax,bx
;mov [6262h],ax  

;sub ax,bx
;mov [6272h],ax

;mul bx
;mov [6282h],ax

;div bx
;mov [6492h],ax

 mov Ax,6000h
 mov DS,AX
 mov BX,5000H
 mov DL,15D 
 MOV CX,15D
 
   L1:MOV [BX],DL
   INC BX
   ADD DL,10D
   LOOP L1

MOV AX,0000H
MOV DX,0000H
MOV BX,5000H
MOV CX,15D
   
   L2: MOV AL,[BX]
   ADD DX,AX
   INC BX
   LOOP L2
 
; ROL CX,1
 ;MOV [5450H],CX   
 ;ROR CX,1
 ;MOV [5460H],CX
 ;RCL CX,1
 ;MOV [5470H],CX
 ;RCR CX,1
 ;MOV [6480H],CX
 
 
 
 ret




