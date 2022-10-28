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
	PUSH	DX
	PUSH	CX
	PUSH	BX
	PUSH	AX

	; TODO: Since this is nearly the same for both cases, it could be moved under a dedicated label
	CMP		AH,		BH
	JL		draw_2d__line__start_smaller
	JNL		draw_2d__line__start_bigger
	MOV		AH,		AL
	CMP		AL,		BL
	JL		draw_2d__line__start_smaller
	JNL		draw_2d__line__start_bigger
	PUSH	AX				; Store ax and ay in the stack

	SUB		AL,		BL
	MOV		CL,		AL		; deltaX
	SUB		AH,		BH
	MOV		CH,		AH		; deltaY
	PUSH	CX				; Store delta values in the stack

	SUB		CL,		CH
	MOV		AH,		00h
	PUSH	AX				; delta diff

	POP		AX				; delta diff	- Do not forget this lol!
	POP		CX				; deltas		- Do not forget this lol!
	POP		AX				; ax and ay		- Do not forget this lol!

	;+ const ax = sx < ex ? 1 : -1;
    ;+ const ay = sy < ey ? 1 : -1;
    ;+ const dx = Math.abs(ex - sx);
    ;+ const dy = Math.abs(ey - sy);
    ;+ let deltaDiff = dx - dy;

	POP		AX
	POP		BX
	PUSH	BX
	PUSH	AX
	bresenham:
		CALL	draw_2d__line
		JMP		draw_2d__line__check_x_match

		bresenham_continue:

			JMP		bresenham

	return:
		RET
    ;+ while (true) {
    ;+   this.drawPixelInternal(sx, sy, depth, red, green, blue);
    ;+   if (sx == ex && sy == ey) {
    ;+     break;
    ;+   }

    ;   const amplifiedDeltaDiff = deltaDiff * 2;
    ;   if (amplifiedDeltaDiff > -dy) {
    ;     deltaDiff -= dy;
    ;     sx += ax;
    ;   }
    ;   if (amplifiedDeltaDiff < dx) {
    ;     deltaDiff += dx;
    ;     fillLines[sy] = fillLines[sy] || [];
    ;     fillLines[sy].push(sx);
    ;     sy += ay;
    ;   }
    ;+ }




	POP		DX
	POP		CX
	POP		BX
	POP		AX

	RET

draw_2d__line__start_smaller:
	MOV		AL,		1
	RET

draw_2d__line__start_bigger:
	; TODO: Load -1 immediately
	MOV		AL,		1
	MOV		BL,		2
	SUB		AL,		BL
	RET

draw_2d__line__check_x_match:
	CMP		AL,		BL
	JZ		draw_2d__line__check_y_match
	JMP		bresenham_continue

draw_2d__line__check_y_match:
	CMP		AH,		BH
	JZ		return
	JMP		bresenham_continue