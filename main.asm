%include "printff.asm"

section .text
        global  _start
_start:

	mov rsi, 'b'
	mov rdx, 1d
	mov rcx, string
	mov rdi, msg
	
        
        call    printff

        ;mov     rax, 60d        ; syscall <- 60 (exit)
        ;syscall

section .data
msg db 'Djordj is the %c%dst %s', 0

string db 'Test string yopta', 10d, 0
