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
	PUSH	AX
	MOV		AH,		00h
	MOV		AL,		13h
	INT		10h
	POP 	AX
	RET
