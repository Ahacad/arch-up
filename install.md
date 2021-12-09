
<!-- vim-markdown-toc GFM -->

* [1. Prepare and get started](#1-prepare-and-get-started)
* [2. Start installing](#2-start-installing)
    * [Connect to a network](#connect-to-a-network)
    * [Prepare disk](#prepare-disk)
    * [Setup pacman](#setup-pacman)
* [3. Install Linux to `/root`](#3-install-linux-to-root)
* [References](#references)

<!-- vim-markdown-toc -->


## 1. Prepare and get started

Make a bootable USB using a USB burner like [balenaEtcherh](https://www.balena.io/etcher/) or commands like [dd](https://www.wikiwand.com/en/Dd_(Unix)) with an image downloaded from [archlinux wiki page](https://archlinux.org/download/).

Boot into Arch Linux with this USB plugged in your computer, you should see something like:

```
root@archiso ~ # 
```

And you are ready with a terminal to start the installation process.

## 2. Start installing

I am personally more familiar with the colemak keyboard so I'd change to it, you might want to skip this.

```
loadkeys colemak
```

### Connect to a network

Use `ip link` to find your device, and `ip link set <device> up` to prepare it for network connection.

```
ip link
ip link set wlan0 up
```
Find wifis that you can connect to by `iwlist <device> scan`.

```
iwlist wlan0 scan              # lots of information may come up here
iwlist wlan0 scan | grep ESSID # grep wifi names for easier connection
```

Use `wpa_passphrase` to generate password file and `wpa_supplicant` to connect to the wifi.

```
wpa_passphrase <wifi_name> <password> > internet.conf # internet.conf is only a text file, you may use any name
wpa_supplicant -c internet.conf -i wlan0 
```

Get a dynamic ip address with `dhcpcd`.

```
dhcpcd &
```

After this you should have access to the Internet, test that with `ping google.com` (or any website you like). 

Finally let's also sync system time with `timedatectl`.

```
timedatectl set-ntp true
```

### Prepare disk

See all your disks with `fdisk`.

```
fdisk -l
```

You should see the disc that you want to format. Let's say it's `/dev/mmcblk1`, and we'll format it with `fdisk`.

```
fdisk /dev/mmcblk1
```

You'll enter an interactive disk formatting command line, with `m` for command helps. Caution that formatting your disk is often dangerous, be sure to have a backup if there are data on it! 

```
g # create GPT partitions
n # add a new partition
+512M # size of the partition, for UEFI
```

Follow instructions of fdisk and format your disk into UEFI partition, swap partition, root partition, etc. Finish `fdisk` with `w`

After partitioning your disk, we'll create file system for the partitions.

```
mkfs.fat -F32 /dev/mmcblk1p1 # UEFI partition, must use fat32
mkfs.ext4 /dev/mmcblk1p2     # the linux /root
mkswap /dev/mmcblk1p3        # the swap
swapon /dev/mmcblk1p3        # start swap
```

### Setup pacman

## 3. Install Linux to `/root`


## References

- [TheCW: 【残酷难度】最全Arch Linux安装教程——打造真正属于你的操作系统](https://www.bilibili.com/video/BV11J411a7Tp?spm_id_from=333.999.0.0)


