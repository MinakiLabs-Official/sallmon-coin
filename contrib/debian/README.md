
Debian
====================
This directory contains files used to package sallmond/sallmon-qt
for Debian-based Linux systems. If you compile sallmond/sallmon-qt yourself, there are some useful files here.

## sallmon: URI support ##


sallmon-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install sallmon-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your sallmon-qt binary to `/usr/bin`
and the `../../share/pixmaps/sallmon128.png` to `/usr/share/pixmaps`

sallmon-qt.protocol (KDE)

