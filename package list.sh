#!/bin/bash

sudo pacman -S sway swaybg swayidle swaylock wlroots waybar kitty tuned tuned-ppd thunar thunar-archive-plugin ark copyq swaync grim xorg-xhost tumbler brightnessctl polkit-gnome xdg-desktop-portal-wlr nwg-look git slurp timeshift zsh

sudo localectl set-locale LANG=en_US.UTF-8

## remove the Ignoring invalid config line: '$HOME/.config/kitty/theme.conf|killall -SIGUSR1 kitty'

sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ~

yay -S tofi wlogout firefox-esr-bin
