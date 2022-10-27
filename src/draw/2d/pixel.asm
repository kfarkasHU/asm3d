;
; Draw a pixel to the screen.
; Required video mode.
; Inputs
;  ah - coord x
;  al - coord y
; Returns
;  none
; Usage
;  MOV ah, 10
;  MOV al, 15
;  CALL draw_2d__pixel
;  ; there is a pixel at (ah; al) location
;
;
draw_2d__pixel:
	PUSH	CX
	PUSH	DX
	PUSH	AH
	PUSH	AL
	PUSH	BH

	MOV		CX,		AH
	MOV		DX,		AL
	MOV		AH,		0Ch
	MOV		BH,		00h
	MOV		AL,		4		; white color
	INT		10h

	POP		BH
	POP		AL
	POP		AH
	POP		DX
	POP		CX

	RET
