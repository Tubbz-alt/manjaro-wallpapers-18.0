#!/usr/bin/make -f

THEME      =    Illyria
DTHEME     =	manjaro-wallpapers-18.0
PREFIX     = 	/usr
DPATH 	   =	$(DESTDIR)$(PREFIX)/share/backgrounds/$(DTHEME)
DXMLGNOME  =    $(DESTDIR)$(PREFIX)/share/gnome-background-properties
DXMLMATE   =    $(DESTDIR)$(PREFIX)/share/mate-background-properties
DEL 	   =  	rm -Rf
INSTD 	   =	install -Dm644 -t
	
install:
	./backgrounds-xml.sh
	mkdir -p $(DXMLGNOME)
	cp -f $(THEME).xml $(DXMLGNOME)
	mkdir -p $(DXMLMATE)
	cp -f $(THEME).xml $(DXMLMATE)
	$(INSTD) $(DPATH) *.jpg 
	
	
uninstall:
	$(DEL) $(DPATH)
	rm -f $(DXMLGNOME)/$(THEME).xml
	rm -f $(DXMLMATE)/$(THEME).xml
 
