# A Makefile for https://github.com/Naereen/sherlock

CC = gcc
CFLAGS = -Wall -ansi -pedantic -O1 -g -D_DEFAULT_SOURCE
# TODO: use a more modern
SOURCE = *.c *.h *akefile*
PROGRAM = sherlock

# TODO: edit this folder if you want to install it elsewhere
BINDIR = ~/bin/

all:	$(PROGRAM) install

$(PROGRAM):	sherlock.c
	$(CC) $(CFLAGS) -o sherlock sherlock.c

tarfile:
	tar cf $(PROGRAM).tar $(SOURCE)
	gzip $(PROGRAM).tar

zipfile:
	zip -k $(PROGRAM).zip $(SOURCE)

clean:
	rm -rf *.o sherlock.dSYM core $(PROGRAM)

install:
	cp -vf $(PROGRAM) $(BINDIR)
