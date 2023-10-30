#!/bin/bash
set -e

paru -S --noconfirm --needed pamac-aur
paru -S --noconfirm --needed noto-fonts-cjk
paru -S --noconfirm --needed mangohud lib32-mangohud
paru -S --noconfirm --needed goverlay-bin
paru -S --noconfirm --needed spotify
paru -S --noconfirm --needed spotify-adblock
paru -S --noconfirm --needed tamsyn-font
paru -S --noconfirm --needed jellyfin
paru -S --noconfirm --needed sublime-text-4
paru -S --noconfirm --needed nordzy-cursors
paru -S --noconfirm --needed oversteer
paru -S --noconfirm --needed xone-dkms
paru -S --noconfirm --needed protonup-qt-bin
paru -S --noconfirm --needed protontricks
paru -S --noconfirm --needed betterdiscordctl
paru -S --noconfirm --needed heroic-games-launcher
paru -S --noconfirm --needed thorium-browser-bin
paru -S --noconfirm --needed nordic-wallpapers
paru -S --noconfirm --needed dxvk-bin

# Extreme simple fetch
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh
