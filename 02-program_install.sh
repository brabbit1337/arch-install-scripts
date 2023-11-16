#!/bin/bash
set -e

sudo pacman -Syyu --noconfirm

# KERNEL HEADERS
sudo pacman -S --noconfirm --needed linux-zen-headers

# Bejelentketés kezelő
sudo pacman -S --noconfirm --needed lightdm
sudo pacman -S --noconfirm --needed lightdm-gtk-greeter
sudo systemctl enable lightdm.service

# BLUETOOTH

sudo pacman -S --noconfirm --needed bluez
sudo pacman -S --noconfirm --needed bluez-libs
sudo pacman -S --noconfirm --needed bluez-utils
sudo pacman -S --noconfirm --needed blueman

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf

echo "reboot your system then ..."
echo "set with bluetooth icon in bottom right corner"
echo "change to have a2dp if needed"


#echo "################################################################"
#echo "###################    T H E   E N D      ######################"
#echo "################################################################"

# PRINTER

#sudo pacman -S --noconfirm --needed cups cups-pdf

#first try if you can print without foomatic
#sudo pacman -S foomatic-db-engine --noconfirm --needed
#sudo pacman -S foomatic-db foomatic-db-ppds foomatic-db-nonfree-ppds foomatic-db-gutenprint-ppds --noconfirm --needed
#sudo pacman -S ghostscript gsfonts gutenprint --noconfirm --needed
#sudo pacman -S gtk3-print-backends --noconfirm --needed
#sudo pacman -S libcups --noconfirm --needed
#sudo pacman -S hplip --noconfirm --needed
#sudo pacman -S system-config-printer --noconfirm --needed

#sudo systemctl enable org.cups.cupsd.service

#echo "After rebooting it will work"

#echo "################################################################"
#echo "#########   printer management software installed     ##########"
#echo "################################################################"

# TLP FOR LAPTOPS

sudo pacman -S --noconfirm --needed tlp
sudo systemctl enable tlp.service
sudo systemctl start tlp.service

echo "################################################################"
echo "####               tlp  software installed              ########"
echo "################################################################"

# KIEGÉSZÍTŐ PROGRAMOK

sudo pacman -S --noconfirm --needed fastfetch
sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed gnome-disk-utility
sudo pacman -S --noconfirm --needed gnome-system-monitor
sudo pacman -S --noconfirm --needed thunar
sudo pacman -S --noconfirm --needed thunar-archive-plugin
sudo pacman -S --noconfirm --needed thunar-volman
sudo pacman -S --noconfirm --needed kdeconnect
sudo pacman -S --noconfirm --needed dunst
sudo pacman -S --noconfirm --needed picom
sudo pacman -S --noconfirm --needed lxappearance
sudo pacman -S --noconfirm --needed inxi
sudo pacman -S --noconfirm --needed glxinfo
sudo pacman -S --noconfirm --needed ntfs-3g
sudo pacman -S --noconfirm --needed os-prober
sudo pacman -S --noconfirm --needed lxsession
sudo pacman -S --noconfirm --needed pavucontrol
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed usb_modeswitch
sudo pacman -S --noconfirm --needed wine
sudo pacman -S --noconfirm --needed winetricks
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed kitty
sudo pacman -S --noconfirm --needed feh
sudo pacman -S --noconfirm --needed reflector
sudo pacman -S --noconfirm --needed conky
sudo pacman -S --noconfirm --needed nm-connection-editor
sudo pacman -S --noconfirm --needed network-manager-applet
sudo pacman -S --noconfirm --needed zsh
sudo pacman -S --noconfirm --needed jellyfin-server
sudo pacman -S --noconfirm --needed jellyfin-web
sudo pacman -S --noconfirm --needed lm_sensors
sudo pacman -S --noconfirm --needed hddtemp
sudo pacman -S --noconfirm --needed arc-gtk-theme

# TÖMÖRÍTŐK
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller

# BETŰTÍPUSOK

sudo pacman -S adobe-source-sans-pro-fonts --noconfirm --needed
sudo pacman -S cantarell-fonts --noconfirm --needed
sudo pacman -S noto-fonts --noconfirm --needed
sudo pacman -S ttf-bitstream-vera --noconfirm --needed
sudo pacman -S ttf-dejavu --noconfirm --needed
sudo pacman -S ttf-droid --noconfirm --needed
sudo pacman -S ttf-hack --noconfirm --needed
sudo pacman -S ttf-inconsolata --noconfirm --needed
sudo pacman -S ttf-liberation --noconfirm --needed
sudo pacman -S ttf-roboto --noconfirm --needed
sudo pacman -S ttf-ubuntu-font-family --noconfirm --needed
sudo pacman -S noto-fonts-emoji --noconfirm --needed
sudo pacman -S ttf-font-awesome --noconfirm --needed


# INTEL / AMD UCODE

#sudo pacman -S intel-ucode --noconfirm
sudo pacman -S amd-ucode --noconfirm
sudo grub-mkconfig -o /boot/grub/grub.cfg

# SZEMÉLYES PROGRAMOK

sudo pacman -S --noconfirm --needed discord
sudo pacman -S --noconfirm --needed qbittorrent
sudo pacman -S --noconfirm --needed lutris
sudo pacman -S --noconfirm --needed flameshot
sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed galculator
sudo pacman -S --noconfirm --needed ristretto
sudo pacman -S --noconfirm --needed mangohud lib32-mangohud
sudo pacman -S --noconfirm --needed gamemode lib32-gamemode
sudo pacman -S --noconfirm --needed archlinux-wallpaper

# OH MY ZSH
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
