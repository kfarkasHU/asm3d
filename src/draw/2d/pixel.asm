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
	MOV ah, 0Ch
	MOV cx, 50		; x coord
	MOV dx, 60		; y coord
	MOV al, 0Fh		; white color
	INT 10h

	RET
