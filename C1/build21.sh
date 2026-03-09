yasm -f elf64 -P ebe.inc -g dwarf2 -l $1.lst -o $1.o $1.asm
gcc -o $1.exe $1.o
