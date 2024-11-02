;
; Converts a value to its negative equivalent.
; Input
;  al
; Output
;  al as -|al|
; Usage
;  MOV al, 8
;  MOV bl, 5
;  SUB al, bl
;  CALL math__abs
;  ; al = -3
;
math__neg:
  CMP AL, 00h
  JNL math__neg_l
  RET

math__neg_l:
  NEG AL
  RET
