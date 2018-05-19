#!/usr/bin/make -f

THEME      =    manjaro-wallpapers-18.0
PREFIX     = 	/usr
DPATH 	   =	$(DESTDIR)$(PREFIX)/share/backgrounds/$(THEME)
DXMLGNOME  =    $(DESTDIR)$(PREFIX)/share/gnome-background-properties
DXMLMATE   =    $(DESTDIR)$(PREFIX)/share/mate-background-properties
DEL 	   =  	rm -Rf
INSTD 	   =	install -Dm644 -t
	
install:
	./backgrounds-xml.sh
	cp -f $(THEME).xml $(DXMLGNOME)
	cp -f $(THEME).xml $(DXMLMATE)
	$(INSTD) $(DPATH) *.jpg 
	
	
uninstall:
	$(DEL) $(DPATH)
	rm -f $(DXMLGNOME)/$(THEME).xml
	rm -f $(DXMLMATE)/$(THEME).xml
 
