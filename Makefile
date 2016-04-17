# calls shell script to build icon theme
# please pass the theme name as a variable before running 'make'

ICNS_HOME = /usr/share/icons

all:
	./build_theme

install:
	install -d -m 0755 $(DESTDIR)/$(ICNS_HOME)/"$(THEME)"
	-cp -ar "$(THEME)"/* $(DESTDIR)/$(ICNS_HOME)/"$(THEME)"

clean:
	-rm -r "$(THEME)"
	-rm *.tar.xz
