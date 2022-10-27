[BITS 16]

init:
	CALL bios__set_video_mode
	MOV		AH,		150
	MOV		AL,		60
	CALL draw_2d__pixel

mainloop:
	MOV		AH,		01h
	INT		21h
	CMP		AL,		1Bh ; Escape
	JNZ		mainloop
	RET

%include "bios/mode.asm"			; Set video mode
%include "math/abs.asm";			; Math absolute
%include "draw/2d/pixel.asm"		; Draw pixel
