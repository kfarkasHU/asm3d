;
; Sets the video mode to 13h and call 10h interruption.
; Input
;  none
; Output
;  none
; Usage
;  CALL bios__set_video_mode
;
bios__set_video_mode:
  PUSH  AX
  MOV   AX, 13h
  INT   10h
  POP   AX
  RET

;
; Sets the text mode to 03h and call 16h interruption.
; Input
;  none
; Output
;  none
; Usage
;  CALL bios__set_text_mode
;
bios__set_text_mode:
  PUSH  AX
  MOV   AX, 03h
  INT   10h
  POP   AX
  RET
