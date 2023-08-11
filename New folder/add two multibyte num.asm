;write a program in emu 8086 to add two multi byte number and store the result as a third number.
;the number are stored in form of byte list.store with lowest byte first

DATA SEGMENT
    NUM1 DB 12H, 34H, 56H    ; First multi-byte number (change as needed)
    NUM2 DB 78H, 9AH, 0BH     ; Second multi-byte number (change as needed)
    RESULT DB 00H, 00H, 00H  ; Resultant multi-byte number
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA             ; Initialize data segment
    MOV DS, AX

    MOV SI, OFFSET NUM1      ; Set SI to point to the first byte of NUM1
    MOV DI, OFFSET NUM2      ; Set DI to point to the first byte of NUM2
    MOV BX, OFFSET RESULT    ; Set BX to point to the first byte of RESULT

    MOV CX, 3                ; Set loop count to 3 (number of bytes in each number)

ADD_LOOP:
    MOV AL, [SI]             ; Load a byte from NUM1 into AL
    ADD AL, [DI]             ; Add a byte from NUM2 to AL
    MOV [BX], AL             ; Store the result byte in RESULT

    INC SI                   ; Move to the next byte in NUM1
    INC DI                   ; Move to the next byte in NUM2
    INC BX                   ; Move to the next byte in RESULT

    LOOP ADD_LOOP            ; Repeat the loop until all bytes are processed

    ; Display the result
    MOV AH, 02H              ; Set function code for DOS display

    MOV AL, [OFFSET RESULT]  ; Load the lowest byte of RESULT into AL
    ADD AL, 30H              ; Convert the byte to ASCII
    INT 21H                  ; Display the digit

    MOV AL, [OFFSET RESULT + 1]  ; Load the middle byte of RESULT into AL
    ADD AL, 30H                  ; Convert the byte to ASCII
    INT 21H                      ; Display the digit

    MOV AL, [OFFSET RESULT + 2]  ; Load the highest byte of RESULT into AL
    ADD AL, 30H                  ; Convert the byte to ASCII
    INT 21H                      ; Display the digit

    MOV AH, 4CH              ; Set function code for DOS exit
    INT 21H                  ; Exit the program

CODE ENDS
END START
