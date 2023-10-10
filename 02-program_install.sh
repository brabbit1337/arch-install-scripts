#!/bin/bash
set -e
############################################################
###		Archlinux program telepítő script	 ###
###		v2.0 (GTK/DWM)				 ###
############################################################

sudo pacman -Syyu --noconfirm

# Bejelentketés kezelő
sudo pacman -S --noconfirm --needed lightdm
sudo pacman -S --noconfirm --needed lightdm-gtk-greeter
sudo systemctl enable lightdm.service

# BLUETOOTH

sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
sudo pacman -S --noconfirm --needed bluez
sudo pacman -S --noconfirm --needed bluez-libs
sudo pacman -S --noconfirm --needed bluez-utils
sudo pacman -S --noconfirm --needed blueberry

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

# KIEGÉSZÍTŐ PROGRAMOK

sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed gnome-disk-utility
sudo pacman -S --noconfirm --needed gnome-system-monitor
sudo pacman -S --noconfirm --needed thunar
sudo pacman -S --noconfirm --needed thunar-archive-plugin
sudo pacman -S --noconfirm --needed thunar-volman
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
sudo pacman -S tamsyn-font --noconfirm --needed
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
