#!/bin/bash

sudo pacman -S sway swaybg swayidle swaylock wlroots waybar kitty thunar-volman tuned tuned-ppd thunar thunar-archive-plugin ark copyq swaync grim xorg-xhost tumbler brightnessctl polkit-gnome xdg-desktop-portal-wlr nwg-look git slurp timeshift zsh

sudo localectl set-locale LANG=en_US.UTF-8

## remove the Ignoring invalid config line: '$HOME/.config/kitty/theme.conf|killall -SIGUSR1 kitty'

#!/bin/bash

# Check if yay is installed
if ! command -v yay &> /dev/null; then
    echo "Yay is not installed. Installing Yay..."
    
    # Install dependencies
    sudo pacman -Sy git base-devel --noconfirm
    
    # Clone Yay repository
    git clone https://aur.archlinux.org/yay-bin.git
    
    # Navigate to the Yay directory
    cd yay
    
    # Build and install Yay
    makepkg -si --noconfirm
    
    # Clean up
    cd ..
    rm -rf yay
    
    echo "Yay has been installed successfully."
else
    echo "Yay is already installed. Version: $(yay --version)"
fi


yay -S tofi wlogout firefox-esr-bin
