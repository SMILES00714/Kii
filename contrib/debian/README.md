
Debian
====================
This directory contains files used to package kiid/kii-qt
for Debian-based Linux systems. If you compile kiid/kii-qt yourself, there are some useful files here.

## kii: URI support ##


kii-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install kii-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your kii-qt binary to `/usr/bin`
and the `../../share/pixmaps/kii128.png` to `/usr/share/pixmaps`

kii-qt.protocol (KDE)

