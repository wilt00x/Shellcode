[BITS 32]

section .text:
global _start

_start:
xor eax, eax
xor ebx, ebx
inc eax
mov bl, al

int 0x80

