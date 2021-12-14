

# Arch Up

```
                   -`
                  .o+`
                 `ooo/         ---  --- ------
                `+oooo:         |    |  |    |
               `+oooooo:        |    |  |    |
               -+oooooo+:       ------  ------
             `/:-:++oooo+:              |
            `/++++/+++++++:             |
           `/++++++++++++++:
          `/+++ooooooooooooo/`
         ./ooosssso++osssssso+`
        .oossssso-````/ossssss+`
       -osssssso.      :ssssssso.
      :osssssss/        osssso+++.
     /ossssssss/        +ssssooo/-
   `/ossssso+/:-        -:/+osssso+-
  `+sso+:-`                 `.-/+oso:
 `++:.                           `-/+/
 .`                                 `
```

<p align="center">

![repo size](https://img.shields.io/github/repo-size/ahacad/using-arch)
![status: refactoring](https://img.shields.io/badge/status-%E2%9A%99%EF%B8%8Frefactoring-red)

</p>

Setup Arch Linux quickly after installing, with a bunch of useful daily programs. On how to install Arch Linux, please see [install.md](./install.md).


## TOC

<!-- vim-markdown-toc GFM -->

* [Explanation of `setup.sh`](#explanation-of-setupsh)
    * [System tools](#system-tools)
    * [GUI setup](#gui-setup)
    * [Developement essentials](#developement-essentials)
    * [Programming languages](#programming-languages)
    * [Handy tools](#handy-tools)
    * [CJK related](#cjk-related)
    * [Fonts](#fonts)
    * [For fun](#for-fun)
* [Set up things manually](#set-up-things-manually)
    * [YAY](#yay)
* [More configurations](#more-configurations)
* [Motivation](#motivation)
* [Contribute](#contribute)
* [Similar projects](#similar-projects)
* [Projects that might be useful](#projects-that-might-be-useful)

<!-- vim-markdown-toc -->

<!--## Install the programs-->

<!--`src/pacman.sh` -> install `yay` -> `src/yay.sh` -> look at the `More configurations` part and do some extra manual setups -> `$HOME/Configurations` -> use `install.sh` in Configurations-->

<!--Firstly you setup Arch Linux programs, and then insall personal configurations.-->

## Getting started

After installing Arch Linux (often I do this by a USB boot), you'll be able to log in a terminal to install more programs. Typically you'll login in first as root, but it's recommended to create a new user and use that account to do more things.

```
useradd -m -G wheel <yourname>
passwd <yourname>
visudo
# find wheel group and allow it to execute any command
```

Exit and re-login use this new acconut, and continue to install more programs.

```
sudo pacman -S git
git clone https://github.com/ahacad/arch-up
cd arch-up/src && bash pacman.sh
```

The above command will install all the programs in `pacman.sh` (see the explanatinos in the next section). After that you may jump to `yay.sh` and install programs inside it.

## Explanation of `pacman.sh`

### System tools

| software name                                                 | explanation                              |
| ---                                                           | ---                                      |
| network-manager-applet                                        | gui for networks, this is handy at times |
| man                                        | gui for networks, this is handy at times |
| [base-devel](https://archlinux.org/groups/x86_64/base-devel/) | development essentials                   |


### GUI setup

```bash
pacman -S xorg xorg-xinit
pacman -S compton redshift sxhkd xwallpaper bspwm dunst
```

This 2 lines setup GUI for you, I use **bspwm**.

| software name                                             | explanation                                          |
| --------                                                  | -------                                              |
| xorg                                                      | the X server                                         |
| xorg-setxkbmap                                            | the setxkbmap utility                                |
| bspwm                                                     | bspwm windows manager                                |
| xwallpaper                                                | for wallpaper                                        |
| compton                                                   | for transparent windows                              |
| redshift                                                  | warmer screen to protect your eyes                   |
| sxhkd                                                     | the universal shortcut manager that bspwm replies on |
| dunst                                                     | GUI notification service                             |
| [xdotool](https://www.semicomplete.com/projects/xdotool/) | X11 automation tools                                 |

### Developement essentials

| software name                 | explanation                             |
| --------                      | -------                                 |
| neovim                        | the new-vim                             |
| git                           | version control                         |
| tmux                          | terminal multiplexer (multiple windows) |
| zsh                           | the zsh shell                           |
| openssh                       | ssh                                     |
| zip, unzip, unrar, p7zip             | compress tool                           |
| mlocate                       | for `locate`                            |
| cronie                        | crontab service                         |
| gparted                       | GUI disc manager                        |
| networkmanager                | network management                      |
| bluez, bluez-utils, blueberry | bluetooth management                    |
| xsel                          | for paste to system to work in neovim   |
| wget                          |                                         |
| ntfs-3g                       | for the ntfs filesystem                 | 

### Programming languages

| software name | explanation                |
| --------      | -------                    |
| python        |                            |
| python-pip    | pip python package manager |
| nodejs        | JavaScript Runtime         |
| clang         | a LLVM based compiler      |
| yarn          | JavaScript package manager |
| cmake         | c package manager          |

### Handy tools

| software name                               | explanation                               |
| --------                                    | -------                                   |
| fzf                                         | fuzzy file finder, good for finding files |
| mpv                                         | video viewer                              |
| sxiv                                        | image viewer                              |
| pandoc                                      | universal file format converter           |
| pdftk                                       | manipulate pdf                            |
| alsa-utils                                  | manage sounds                             |
| lazygit                                     | git TUI                                   |
| alacritty                                   | alacritty the terminal emulator           |
| zathura-pdf-mupdf, zathura-djvu, zathura-ps | the zathura file viewer                   |
| newsboat                                    | terminal rss                              |
| light                                       | control brightness                        |
| rofi                                        | open programs easily                      |
| tokei                                       | code line count                           |
| khal, vdirsyncer                            | terminal calendar and syncer              |
| cgdb                                        | gdb with TUI                              |
| xxd                                         | for hex editor                            |
| bat                                         | rust cat clone                            |
| htop                                        | system monitoring                         |
| powertop                                    | battery monitoring                        |
| rsync                                       |                                           |
| pulseaudio                                  | audio control                             |
| pueue                                       | run process in parallel easily            |
| flameshot                                   | screen shot with ease                     |
| ripgrep                                     | code search with ease                     |
| libreoffice                                 | substitution for microsoft office         |

### CJK related 

| software name                               | explanation                               |
| --------                                    | -------                                   |
| ibus-rime                                   | the rime input method editor              |
| polipo                                      | you'll need proxy to work in China        |


### Fonts

| software name               | explanation |
| ---                         | ---         |
| adobe-source-code-pro-fonts |             |
| rxvt-unicode                |             |
| noto-fonts                  |             |
| noto-fonts-emoji            |             |
| ttf-font-awesome            |             |

### For fun

| software name    | explanation      |
| --------         | -------          |
| cowsay           |                  |
| krita            | for drawing      |
| inkscape         | for drawing      |
| digikam          | photo management |
| xf86-input-wacom | wacom utilities  |

### The hacker toolkit

| software name                                                               | explanation                                          |
| ---                                                                         | ---                                                  |
| iperf3                                                                      | network bandwidth measument                          |
| [aircrack-ng](https://archlinux.org/packages/community/x86_64/aircrack-ng/) | Key cracker for the 802.11 WEP and WPA-PSK protocols |

## Set up things manually

As said before, due to the nature of configurations you'll have to set up a few things manually

### YAY

Follow the instructions of [yay](https://github.com/Jguer/yay), you may need `export GOPROXY="https://goproxy.cn"` to help golang download packages in China. `yay ` is very important as it saves you tons of time for installing programs from AUR.

```bash
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

| software name        | brif intro             | explanations                                                                                                                             |
| ---                  | ---                    | ---                                                                                                                                      |
| google-chrome-stable | the Chrome browser     | opnions vary when it comes to choosing a browser, though google is not fully open sourced it is still arguablely one of the best browers |
| polybar              | the bar for bspwm      | typically you need extra stuffs for a window manager, to get something similar to MacOS, polybar is a good option for the top bar        |
| lf                   | terminal file browser  | a terminal file explorer written in golang, it is fast                                                                                   |
| typora-free          | typora markdown editor | typora starts charging from December 2021, if you want to use free typora try this which is a beta version                               |
| delta                | terminal code diff     | a diff tool better than the plain, there are a bunch more tools like this and you might find your own favourite                          |
| nerd-fonts-complete  | nerd fonts             |                                                                                                                                          |
|                      |                        |                                                                                                                                          |

Now go back to `src/yay.sh` and install more tools.

## More configurations

### LaTeX

[TeX Live](https://wiki.archlinux.org/title/TeX_Live): I use LaTeX a lot and
would typicall install it upon booting, but TeX is too big, and you might not
need it, so I put it here only for your reference

### Natural Scrolling

[natural scrolling for Linux](https://wiki.archlinux.org/title/Libinput#Via_Xorg_configuration_file), edit file `/etc/X11/xorg.conf.d/40-libinput.conf`

```
Section "InputClass"
	Identifier "touchpad"
	Driver "libinput"
	MatchIsTouchpad "on"
	Option "Tapping" "on"
	Option "NaturalScrolling" "true"
  Option "ClickMethod" "clickfinger"
EndSection
```

### Default applications

We'll use `xdg-open` as the example, find applications in `/usr/share/applications` and you see things like `lf.desktop`.

Edit the `~/.config/mimeapps.list` and write things like:

```
applications/pdf=org.pwmt.zathura.desktop
```

where the left side is the type for the files and the right side is the application's name. You can get types of files by `xdg-mime query filetype <file>`.

### Detect dual systems

Sometimes the dual system (like Windows) will not be detected by grub when you are installing Arch Linux and forget to temporarily mount it, you can fix this latter. EDit `/etc/default/grub` and add/uncomment the line 

```
GRUB_DISABLE_OS_PROBER=false
```

Then run `grub-mkconfig -o /boot/grub/grub.cfg`, this problem should be fixed.

Now head to [Configurations](https://github.com/ahacad/Configurations) and install personal configs.


## Motivation

Using Arch Linux is an enjoyable experience, you can customize it to your needs; *installing Arch is not*.

This repo is an opinioned repo for installing basic and advanced tools **after you successfully install Arch and boot into it**.

This repo containes a `setup.sh` shell script to set up arch configurations after installing, this will contain lots of common tools that will give you a better *development experince*. Due to the nature of all the open-sourced tools, their way of configurations **may vary from time to time**, and some of them will have to be set up manually for this very moment, I will explain them one by one below.

This repo is related to my [Configurations](https://github.com/ahacad/Configurations) and [wallpapers](https://github.com/Ahacad/wallpaper).

## Contribute

Any suggestion or question is welcomed, start a [issue now](https://github.com/Ahacad/using-arch/issues/new), or make a [PR](https://github.com/Ahacad/using-arch/pulls).

You can also contact me through email [ahacad AT 126 DOT com](mailto:ahacad@126.com).

## Similar projects

- [Luke Smith LARBS](https://github.com/LukeSmithxyz/LARBS): auto-rice bootstrapping scripts, Luke is a famous youtuber

## Projects that might be useful

- [awesome readme](https://github.com/matiassingers/awesome-readme): repos with a good README
