#!/bin/bash


# install yay
if pacman -Qs yay > /dev/null ; then
	echo "yay installed"
else
	echo "installing yay"
	sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
	# clean yay
	cd ..
	sudo rm -r yay
fi

echo "installing packages"
# install packages
yay -S --needed - < pkglist.txt &&

echo "stowing dots and configs"
stow home
sudo stow -t / root