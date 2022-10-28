;
; Draw a pixel to the screen.
; Required video mode.
; Inputs
;  al - coord x
;  ah - coord y
; Returns
;  none
; Usage
;  MOV ah, 10
;  MOV al, 15
;  CALL draw_2d__pixel
;  ; there is a pixel at (al; ah) location
;
draw_2d__pixel:
	PUSH	CX
	PUSH	DX
	PUSH	AX
	PUSH	BX

	MOV		CH,		AL
	MOV		DL,		AH
	MOV		AH,		0Ch
	MOV		BH,		00h
	MOV		AL,		4
	INT		10h

	POP		BX
	POP		AX
	POP		DX
	POP		CX

	RET
