[BITS 16]
[ORG 0x7C00]

%include "math/_entry.asm"
%include "bios/_entry.asm"
%include "draw/_entry.asm"

CALL draw_2d__pixel

JMP loop
loop:
	JMP loop
