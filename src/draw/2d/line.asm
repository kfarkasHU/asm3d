;
; Draws a line
; Inputs
;  al - Ax
;  ah - Ay
;  bl - Bx
;  bh - By
; Outputs
;  none
; Usage
;  MOV AL, 5
;  MOV AH, 5
;  MOV BL, 10
;  MOV BH, 10
;  CALL draw_2d__line
;
draw_2d__line:
	PUSH	AX
	PUSH	BX
	PUSH	CX
	PUSH	DX

	; Order by X
	CMP		AL,		BL
	JNL		draw_no_swap_x
	XCHG	AX,		BX
	draw_no_swap_x:
		MOV		DX,		AX
		CALL	draw_2d__line_calc_dx
		CALL	draw_2d__line_calc_dy
		
		; cl dx
		; ch dy

		; Move startX to AL
		MOV		AL,		DL
		loop_over_x:
			CALL	draw_2d__line_calc_y
			MOV		AH,		DL
			XCHG	AL,		AH
			PUSH	BX
			MOV 	BL, 48
			CALL	draw_2d__pixel
			POP		BX

			INC		AL
			XCHG	AL,		DL
			CMP		DL,		BL			; break if al === bl (x === x2)
			JNE		loop_over_x

	POP		DX
	POP		CX
	POP		BX
	POP		AX

	RET


;
; Calculates `y` value with the following formula
;	y = y1 + dy(x - x1)/dx
; Inputs
;  al - x1
;  ah - y1
;  dl - x
;  cl - dx
;  ch - dy
; Outputs
;  al - y
;
draw_2d__line_calc_y:
	PUSH	AX
	PUSH	BX
	PUSH	CX
	PUSH	DX

	XCHG	AL,		DL
	SUB		AL,		DL ; x - x1

	XCHG	AX,		CX
	XCHG	AL,		AH
	DIV		AH

	MUL		CL

	ADD		CL,		CH

	POP		AX

	MOV		AL,		CL
	
	POP		BX
	POP		CX
	POP		DX

	RET

;
; Calculates `dx`
; Inputs
;  al - Ax
;  bl - Bx
; Outputs
;  cl - dx
;
draw_2d__line_calc_dx:
	SUB		AL,		BL
	MOV		CL,		AL	;dx
	RET

;
; Calculates `dy`
; Inputs
;  ah - Ay
;  bh - By
; Outputs
;  ch - dy
;
draw_2d__line_calc_dy:
	SUB		AH,		BH
	MOV		CH,		AH	;dy
	RET

	; order by x
	; calc dx, dy
	; while x = x1; x < x2
	; 	y = y1 + dy * (x - x1) / dx;
	;	draw
	; if dx = 0
	; 	order by y
	; 	while y = y1; y1 < y2 + 1
	;		draw