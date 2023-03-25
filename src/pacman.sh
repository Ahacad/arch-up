#! /usr/bin/sh

# system setup
pacman -S --noconfirm network-manager-applet base-devel sudo man

# for GUI, wm (windows managers) also needs this
pacman -S --noconfirm xorg xorg-xinit xorg-setxkbmap
pacman -S --noconfirm bspwm compton redshift sxhkd xwallpaper dunst xdotool picom

# developer essentials 
pacman -S --noconfirm neovim git tmux zsh openssh zip unrar unzip p7zip mlocate cronie gparted networkmanager bluez bluez-utils blueberry xsel wget ntfs-3g 

# programming languages

pacman -S --noconfirm python python-pip nodejs yarn clang cmake gopls

# handy tools
pacman -S --noconfirm fzf mpv sxiv pandoc pdftk alsa-utils zathura-pdf-mupdf zathura-djvu zathura-ps lazygit alacritty newsboat light rofi tokei khal vdirsyncer cgdb xxd bat powertop htop rsync pulseaudio pueue flameshot ripgrep libreoffice tree ncdu github-cli

# for CJK
pacman -S --noconfirm ibus ibus-rime

# fonts
pacman -S --noconfirm adobe-source-code-pro-fonts rxvt-unicode noto-fonts noto-fonts-emoji ttf-font-awesome

# for fun
pacman -S --noconfirm cowsay krita inkscape digikam gimp xf86-input-wacom mpd

# hacker toolkit
pacman -S --noconfirm iperf3 aircrack-ng

# =====================================================

echo "Install yay by instructions from README, and go to use yay.sh"
