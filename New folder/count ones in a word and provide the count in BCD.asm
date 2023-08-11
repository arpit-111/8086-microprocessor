; Program to count ones in a word and provide the count in BCD

DATA SEGMENT
    COUNT DB 00H           ; Count in BCD format
    WORD DW 1234H          ; Word to count ones in (change this value as needed)
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA           ; Initialize data segment
    MOV DS, AX

    MOV CX, 16             ; Set loop count to 16 (number of bits in a word)
    MOV BX, WORD           ; Move the word to BX register

COUNT_ONES:
    RCR BX, 1              ; Rotate the word right through carry

    JNC SKIP_INCREMENT     ; Jump if no carry (bit is not set)

    INC COUNT              ; Increment the count

SKIP_INCREMENT:
    LOOP COUNT_ONES        ; Loop until all 16 bits are processed

    ; Convert the count to BCD
    MOV Al, COUNT          ; Move the count to AX
    MOV BL, 10             ; Divisor for BCD conversion

CONVERT_TO_BCD:
    XOR DX, DX             ; Clear DX for division
    DIV BL                 ; Divide AX by BL
    ADD DL, 30H            ; Convert the remainder to ASCII
    MOV [COUNT], DL        ; Store the BCD digit in memory

    DEC CX                 ; Decrement the loop counter
    TEST AX, AX            ; Check if quotient is zero
    JNE CONVERT_TO_BCD     ; Jump if quotient is not zero

    ; Output the BCD count
    MOV AH, 02H            ; Set function code for DOS display
    MOV DL, [COUNT]        ; Load the BCD digit
    INT 21H                ; Call DOS to display the digit

    MOV AH, 4CH            ; Set function code for DOS exit
    INT 21H                ; Call DOS to exit the program

CODE ENDS
END START
