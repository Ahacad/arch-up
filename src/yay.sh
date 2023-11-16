#! /usr/bin/sh

yay -S google-chrome polybar pulseaudio-control

yay -S lf typora-free

yay -S telegram-desktop

yay -S pulseaudio-control

pacman -Ssq nerd-fonts | sudo pacman -S -

# ====================================

pip install neovim

# ====================================

#git clone https://github.com/ahacad/Configurations $HOME/Configurations

echo "Now clone to $HOME/Configurations and setup more personal configurations"
