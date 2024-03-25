# This is a basic makefile to compile a program.

CC=gcc
CFLAGS=-Wall -Wfatal-errors -lm -lcrypto

SRC=main.c
PROGRAM=main

.PHONY: all
all: ${PROGRAM}

${PROGRAM}: ${SRC}
	${CC} ${CFLAGS} -o ${PROGRAM}  ${SRC}

.PHONY: clean
clean:
	rm -rf *.o ${PROGRAM} 
