AS = nasm
ASFLAGS = -f elf64
LD = ld
LDFLAGS = -m elf_x86_64

default: all

all: rdrand

debug: ASFLAGS = -f elf64 -F dwarf -g
debug: rdrand

strip: LDFLAGS = -m elf_x86_64 -s
strip: rdrand

rdrand.o: rdrand.asm
	$(AS) $(ASFLAGS) rdrand.asm -o rdrand.o

rdrand: rdrand.o
	$(LD) $(LDFLAGS) rdrand.o -o rdrand

clean:
	-rm -f rdrand.o
	-rm -f rdrand

