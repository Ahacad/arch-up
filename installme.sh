#! /bin/bash

# grub
pacman -S grub
pacman -S efibootmgr
pacman -S intel-ucode
pacman -S os-prober

# X11
pacman -S xorg-server
pacman -S xorg-xinit
pacman -S xorg-fonts  
pacman -S xorg-xwininfo

# utilities
pacman -S wpa_supplicant
pacman -S ntfs-3g
pacman -S alsa-utils
pacman -S python-pip


# tools
pacman -S vim
pacman -S git
pacman -S tmux
pacman -S zsh
pacman -S openssh

# optional tools
pacman -S redshift
pacman -S compton 
pacman -S sxhkd
pacman -S fzf
pacman -S xwallpaper
pacman -S shadowsocks-libev
pacman -S mpv
pacman -S sxiv
pacman -S ffmpeg
pacman -S unrar
pacman -S unzip
pacman -S mlocate
pacman -S gedit
pacman -S zathura-pdf-mupdf
pacman -S zathura-djvu
pacman -S zathura-ps
pacman -S ibus
pacman -S ibus-rime
pacman -S dunst

pacman -S networkmanager

# fonts
pacman -S adobe-source-code-pro-fonts 
pacman -S rxvt-unicode
pacman -S noto-fonts
pacman -S noto-fonts-emoji
pacman -S ttf-font-awesome

# pip
pip3 install ueberzug

# manual install
# lazygit from AUR
