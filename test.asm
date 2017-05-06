DEFAULT REL
section .bss
buf  resb    64      ; output buffer

section .text

%macro print_char 1      ; a macro with 1 par = str[i]
        mov     rax, 1   ; syscall  1 write
        mov     rdi, 1   ; fd = stdout(1)
        lea     rsi, %1  ; address = &str[i]
        mov     rdx, 1   ; length = 1
        syscall
%endmacro

	global _start
_start:
	mov r10b, [msg]
	mov [buf], r10 
	print_char [buf]

	mov rax, 60d
	syscall

section .data
msg db 'Hello, peedor'

