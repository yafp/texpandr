################################################################################
#	Makefile for texpandr.sh
#
#	Technically, no 'making' occurs, since it's just a shell script, but
#	let us not quibble over trivialities such as these.
################################################################################
PREFIX=/usr
SRC=src
SRCFILE=texpandr.sh
DESTFILE=texpandr.sh
DOC=doc
DATAPATH=$(PREFIX)/share/texpandr


install:
	$(info )
	$(info *** INSTALL ***)
	@install -D -m 0755 $(SRC)/$(SRCFILE) $(PREFIX)/bin/$(DESTFILE)
	@mkdir -vp $(DATAPATH)
	@install -v -D -m 0644 LICENSE $(DATAPATH)/LICENSE
	@install -v -D -m 0644 README.md $(DATAPATH)/README.md


uninstall:
	$(info )
	$(info *** UNINSTALL ***)
	rm -f $(PREFIX)/bin/$(DESTFILE)
	rm -rf $(DATAPATH)
