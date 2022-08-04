#!/bin/bash

yay -S awesome picom-ibhagwan-git noto-fonts noto-fonts-cjk noto-fonts-emoji thunar-archive-plugin thunar-media-tags-plugin thunar-volman firefox discord steam nvidia-prime optimus-manager

sudo pacman -S xdg-utils lightdm lightdm-gtk-greeter thunar kitty


stow home
sudo stow -t / root
