[BITS 16]

init:
	CALL bios__set_video_mode
	CALL draw_pixel_test
	CALL draw_line_test

mainloop:
	MOV		AH,		01h
	INT		21h
	CMP		AL,		1Bh ; Escape
	JNZ		mainloop
	CALL	bios__set_text_mode
	RET

draw_pixel_test:
	MOV al, 4
	MOV ah, 10
	MOV bl, 15
	CALL draw_2d__pixel

	MOV al, 11
	MOV ah, 10
	MOV bl, 15
	CALL draw_2d__pixel

	RET

draw_line_test:
	MOV AL, 5
	MOV AH, 10
	MOV BL, 10
	MOV BH, 10
	CALL draw_2d__line
	RET

%include "bios/mode.asm"			; Set video mode
%include "math/abs.asm";			; Math absolute
%include "math/neg.asm";			; Math negate
%include "draw/2d/pixel.asm"		; Draw pixel
%include "draw/2d/line.asm"			; Draw line
%include "draw/2d/triangle.asm"		; Draw triangle
%include "text/print.asm"			; Print character
