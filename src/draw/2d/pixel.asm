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
	MOV		AH,		0Ch
	MOV		BH,		00h
	MOV		CX,		02h		; x coord
	MOV		DX,		04h		; y coord
	MOV		AL,		4		; white color
	INT		10h
	RET


; mov ah, 0ch
; mov bh, 0
; mov dx, 5
; mov cx, 5
; mov al, 0100b
; int 10h