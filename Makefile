# Makefile for lud
#

DESTDIR =
PREFIX =        /usr

all:
	# Nothing to compile, run directly "make install" (as root)

install:
	install -m 555 src/lud_genudid src/lud src/unidecode.sed src/urlencode.sed $(DESTDIR)$(PREFIX)/bin
	install -m 444 src/lud_set.env src/lud_utils.env src/lud_generator.env $(DESTDIR)$(PREFIX)/share/openudc-lud
	install manpages/lud.1 $(DESTDIR)$(PREFIX)/share/man/man1

uninstall:
	rm -vf $(DESTDIR)$(PREFIX)/bin/lud_genudid $(DESTDIR)$(PREFIX)/bin/lud $(DESTDIR)$(PREFIX)/bin/unidecode.sed $(DESTDIR)$(PREFIX)/bin/urlencode.sed
	rm -vf $(DESTDIR)$(PREFIX)/share/openudc-lud/lud_*.env

