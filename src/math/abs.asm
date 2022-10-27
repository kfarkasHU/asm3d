;
; Converts a value to its positive equivalent.
; Input
;  al
; Output
;  al as |al|
; Usage
;  MOV al, 5
;  MOV bl, 8
;  SUB al, bl
;  CALL math__abs
;  ; al = 3
;
math__abs:
	CMP		AL,		00h
	JL		math__abs_g
	RET

math__abs_g:
	NEG		AL
	RET