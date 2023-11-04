#!/bin/bash
set -e

# NVIDIA Driver friss

sudo pacman -S --noconfirm --needed nvidia-dkms nvidia-utils nvidia-settings

# NVIDIA 32 bit libs + LIBS for STEAM

sudo pacman -S --noconfirm --needed lib32-libvdpau
sudo pacman -S --noconfirm --needed lib32-libva
sudo pacman -S --noconfirm --needed lib32-nvidia-utils
sudo pacman -S --noconfirm --needed lib32-libxtst
sudo pacman -S --noconfirm --needed lib32-libxrandr
sudo pacman -S --noconfirm --needed lib32-libpulse
sudo pacman -S --noconfirm --needed lib32-gdk-pixbuf2
sudo pacman -S --noconfirm --needed lib32-gtk2
sudo pacman -S --noconfirm --needed lib32-openal

# STEAM

sudo pacman -S --noconfirm --needed steam-native-runtime
