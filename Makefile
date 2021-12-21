PREFIX ?= /usr

all:
	@echo RUN \'make install\' to install tpc and tss

install:
	@install -Dm755 tpc $(DESTDIR)$(PREFIX)/bin/tpc
	@install -Dm755 tss $(DESTDIR)$(PREFIX)/bin/tss
	@install -Dm755 mpcopt $(DESTDIR)$(PREFIX)/bin/mpcopt

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/tpc
	@rm -f $(DESTDIR)$(PREFIX)/bin/tss
	@rm -f $(DESTDIR)$(PREFIX)/bin/mpcopt