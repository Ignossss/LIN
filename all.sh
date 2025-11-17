#!/bin/bash
set -e

pacman -Syu

pacman -S mesa vulkan-radeon nvidia nvidia-utils nvidia-settings vulkan-icd-loader
pacman -S pipewire-alsa pipewire-jack pipewire-pulse pamixer pavucontrol
pacman -S ly mako bluez bluez-utils grim slurp
pacman -S kitty thunar wofi
pacman -S obsidian

pacman -S hyprland hyprpaper xdg-desktop-portal xdg-desktop-portal-hyprland 

pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-dejavu ttf-font-awesome ttf-noto-nerd 

systemctl enable NetworkManager
systemctl enable ly
systemctl enable bluetooth

pacman -S os-prober

echo Enable os-prober: helix /etc/default/grub \|\| grub-mkconfig -o /boot/grub/grub.cfg
