;
; Prints a character to the console
; Inputs
;  ax
; Outputs
;  none
; Usage
;  MOV AX, 30
;  CALL text__print_char
;  ; 'A' in the console
;
text__print_char:
	PUSH	AX
	POP		DX

	MOV		AL,		DL
	MOV		AH,		0x0E
	MOV		BH,		0x00
	MOV		BL,		0x07

	INT		0x10
	MOV		AX,		DX

	RET
