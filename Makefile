#!/usr/bin/make -f

.PHONY: all image clean

all: noop32 noop64 goodbye32 goodbye64

clean:
		rm -f noop *.o

%32.o: %32.asm
		nasm -f elf32 $< -o $@

%64.o: %64.asm
		nasm -f elf64 $< -o $@

%32: %32.o
		gcc -Os -m32 -Wall -s -nostdlib $< -o $@

%64: %64.o
		gcc -Os -m64 -Wall -s -nostdlib $< -o $@

image: noop
		docker build -t noop .
