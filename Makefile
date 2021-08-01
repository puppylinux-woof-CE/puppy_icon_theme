# calls shell script to build icon theme
# please pass the theme name as a variable before running 'make'

ICNS_HOME = /usr/share/icons

all:
	./build_theme

package:
	./build_tar.sh

install:
	install -d -m 0755 $(DESTDIR)/$(ICNS_HOME)/"$(THEME)"
	-cp -ar "$(THEME)"/* $(DESTDIR)/$(ICNS_HOME)/"$(THEME)"

clean:
	-rm -rf "$(THEME)"
	-rm -f *.tar.xz*
	-rm -rf *_icons
