[BITS 16]

init:
	CALL bios__set_video_mode

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
%include "draw/2d/pine.asm"			; Draw line
%include "text/print.asm"			; Print character