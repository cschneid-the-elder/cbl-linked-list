
CFLAGS=-Wall -Wcolumn-overflow -Wtruncate -Wunreachable
LDFLAGS=-lm

./%: ./%.cbl
	echo `date` $< >>build.log
	cobc $(CFLAGS) -t $@.lst -x -o $@ $<

all: ./lldemo1

.PHONY: all

