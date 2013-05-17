%.1: %.txt
	stx2any -T man $< >$@

%.ps: %.1
	groff -mandoc $< >$@

MANPAGES=lud.1

all: $(MANPAGES)

clean:
	rm -rf *.ps

maintainer-clean:
	rm -rf $(MANPAGES)
