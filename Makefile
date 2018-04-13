#!/usr/bin/make -f

PREFIX  = 	/usr
DPATH 	=	$(DESTDIR)$(PREFIX)/share/backgrounds
DEL 	=  	rm -rf
INSTD 	=	install -Dm644 -t

install:
	$(INSTD) $(DPATH) *.jpg
uninstall:
	$(DEL) $(DPATH)/*.jpg

