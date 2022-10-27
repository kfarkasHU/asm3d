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
	CMP		AL,		BL
	JL		draw_2d__line__start_smaller
	JNL		draw_2d__line__start_bigger
	; Now we have 1 or -1 in AL
	CMP		AH,		BH
	JL		draw_2d__line__start_smaller
	JNL		draw_2d__line__start_bigger
	; Now we have 1 or -1 in AL

	SUB		AL,		BL
	MOV		CL,		AL		; deltaX
	SUB		AH,		BH
	MOV		CH,		AH		; deltaY
	PUSH	CX				; Store delta values in the stack

	POP		CX				; Do not forget this lol!
    ;+ const dx = Math.abs(ex - sx);
    ;+ const dy = Math.abs(ey - sy);
    ;+ const ax = sx < ex ? 1 : -1;
    ;+ const ay = sy < ey ? 1 : -1;
    ; let deltaDiff = dx - dy;

    ; while (true) {
    ;   this.drawPixelInternal(sx, sy, depth, red, green, blue);
    ;   if (sx == ex && sy == ey) {
    ;     break;
    ;   }

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
    ; }




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
