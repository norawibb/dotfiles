#!/bin/bash

# install yay
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
# clean yay
cd ..
sudo rm -r yay

# install packages
yay -S awesome picom-ibhagwan-git noto-fonts noto-fonts-cjk noto-fonts-emoji thunar-archive-plugin thunar-media-tags-plugin thunar-volman firefox discord steam nvidia-prime optimus-manager

sudo pacman -S xdg-utils lightdm lightdm-gtk-greeter thunar kitty

# stow configs
stow home
sudo stow -t / root
