;
; Draw a pixel to the screen.
; Required video mode.
; Inputs
;  al - coord x
;  ah - coord y
;  bl - color
; Returns
;  none
; Usage
;  MOV ah, 10
;  MOV al, 15
;  CALL draw_2d__pixel
;  ; there is a pixel at (al; ah) location
;
draw_2d__pixel:
  PUSH  CX
  PUSH  DX
  PUSH  AX
  PUSH  BX

  ; x coord (col)
  MOV   CX, 0
  MOV   CL, AL

  ; y coord (row)
  MOV   DX, 0
  MOV   DL, AH

  MOV   AH, 0Ch
  MOV   BH, 00h
  MOV   AL, BL
  INT   10h

  POP   BX
  POP   AX
  POP   DX
  POP   CX

  RET
