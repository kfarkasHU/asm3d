;
; Converts a value to its positive equivalent.
; Input
;  ax
; Output
;  ax as |ax|
; Usage
;  MOV ax, 5
;  MOV bx, 8
;  SUB ah, al
;  CALL math__abs
;  ; ax = 3
;
math__abs:
	CMP		AX,		00h
	JL		math__abs_g
	RET

math__abs_g:
	NEG		AX
	RET