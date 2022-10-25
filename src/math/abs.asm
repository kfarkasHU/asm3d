;
; Converts a value to its positive equivalent.
; Input
;  ah
; Output
;  ah as |ah|
; Usage
;  MOV ah, 5
;  MOV al, 8
;  SUB ah, al
;  CALL math__abs
;  ; ah = 3
;
math__abs:
	CMP ax, 0			; Compare ax to 0
	JL math__abs_g		; Lower than 0
	RET

math__abs_g:
	NEG ax
	RET