all:
	nasm -f elf64 printff.asm
	nasm -f elf64 main.asm
	ld -m elf_x86_64 main.o
	gcc -c main.c -o main_c.o
	gcc -static main_c.o printff.o -o main 
