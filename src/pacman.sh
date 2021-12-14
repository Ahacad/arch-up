#! /usr/bin/sh

# system setup
pacman -S network-manager-applet base-devel visudo

# for GUI, wm (windows managers) also needs this
pacman -S xorg xorg-xinit xorg-setxkbmap
pacman -S bspwm compton redshift sxhkd xwallpaper dunst xdotool

# developer essentials 
pacman -S neovim git tmux zsh openssh zip unrar unzip p7zip mlocate cronie gparted networkmanager bluez bluez-utils blueberry xsel wget ntfs-3g 

# programming languages

pacman -S python python-pip nodejs yarn clang cmake

# handy tools
pacman -S fzf mpv sxiv pandoc pdftk alsa-utils zathura-pdf-mupdf zathura-djvu zathura-ps lazygit alacritty newsboat light rofi tokei khal vdirsyncer cgdb xxd bat powertop htop rsync pulseaudio pueue flameshot ripgrep libreoffice

# for CJK
pacman -S ibus ibus-rime

# fonts
pacman -S adobe-source-code-pro-fonts rxvt-unicode noto-fonts noto-fonts-emoji ttf-font-awesome

# for fun
pacman -S cowsay krita inkscape digikam xf86-input-wacom

# hacker toolkit
pacman -S iperf3 aircrack-ng

# =====================================================

echo "Install yay by instructions from README, and go to use yay.sh"
