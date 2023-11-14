#!/bin/bash
set -e

# BASE INSTALL
sudo pacman -S --noconfirm --needed base-devel
sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed nano

# BASE XORG
sudo pacman -S --noconfirm --needed xorg-server
sudo pacman -S --noconfirm --needed xorg-xinit
sudo pacman -S --noconfirm --needed xorg-xsetroot
sudo pacman -S --noconfirm --needed libx11
sudo pacman -S --noconfirm --needed libxinerama
sudo pacman -S --noconfirm --needed libxft
sudo pacman -S --noconfirm --needed webkit2gtk
