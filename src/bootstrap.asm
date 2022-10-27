[BITS 16]

MOV AL, 30h
MOV AH, 0Eh
MOV BH, 00h
MOV BL, 07h

INT 10h

MOV AX, 13h
INT 10h

mov ah, 0ch
mov bh, 0
mov dx, 5
mov cx, 5
mov al, 0100b
int 10h

JMP $
