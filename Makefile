#!/usr/bin/make -f

THEME   =   manjaro-wallpappers-18.0
PREFIX  = 	/usr
DPATH 	=	$(DESTDIR)$(PREFIX)/share/backgrounds/$(THEME)
DEL 	=  	rm -rf
INSTD 	=	install -Dm644 -t

install:
	$(INSTD) $(DPATH) *.jpg
uninstall:
	$(DEL) $(DPATH)/*.jpg

