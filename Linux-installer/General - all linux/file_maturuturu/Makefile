prefix=/usr/local/games/maturuturu_studios
prefixbin=/usr/local/bin
prefixicon=/usr/share/icons/hicolor/128x128/apps/
prefixdesktop=/usr/share/applications

all: install

install: clean
	mv maturuturu_studios $(prefix)
	chmod 0755 -R $(prefix)
	ln -s $(prefix)/drop-v0.4.1_lin.x86 $(prefixbin)/drop
	install -m 0644 $(prefix)/drop.desktop $(prefixdesktop)
	mkdir -p $(prefixicon)
	install -m 0644 $(prefix)/icon.png $(prefixicon)/maturuturu_drop.png

clean:
	echo "Deleting previous installation..."
	echo "Asking for permissions"
	sudo echo -n
	rm -Rf $(prefix)/*
	if [ -a $(prefix) ]; then rmdir $(prefix); fi;
	rm -rf $(prefixbin)/drop
	rm -rf $(prefixbicon)/maturuturu_drop.png
	rm -rf $(prefix)/drop.desktop