[BITS 16]

init:
	MOV		AX, 50
	MOV		BX, 115
	SUB		AX, BX
	CALL	math__abs
	CALL	text__print_char

	; CALL bios__set_video_mode
	; MOV		AH,		150
	; MOV		AL,		60
	; CALL draw_2d__pixel

mainloop:
	MOV		AH,		01h
	INT		21h
	CMP		AL,		1Bh ; Escape
	JNZ		mainloop
	CALL	bios__set_text_mode
	RET

%include "bios/mode.asm"			; Set video mode
%include "math/abs.asm";			; Math absolute
%include "draw/2d/pixel.asm"		; Draw pixel
%include "text/print.asm"			; Print character