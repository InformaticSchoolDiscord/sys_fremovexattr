BITS 64

global _main


section .rodata

	user db "Test", 0


section .text

_main:
	mov rax, 199
	mov rdi, 1 
	mov rsi, user
	syscall
	jmp _exit

_exit:
	mov rax, 0x3C
	mov rdi, 0
	syscall
