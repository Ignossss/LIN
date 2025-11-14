#!/bin/bash
set -e

pacman -Syu

pacman -S mesa vulkan-radeon nvidia nvidia-utils nvidia-settings vulkan-icd-loader
pacman -S pipewire-alsa pipewire-jack pipewire-pulse pamixer
pacman -S ly mako bluez bluez-utils grim slurp
pacman -S kitty thunar dmenu wofi
pacman -S obsidian prismlauncher steam code
yay -S brave-bin
pacman -S tk

sudo pacman -S hyprland hyprpaper xdg-desktop-portal xdg-desktop-portal-hyprland 

sudo pacman -S bspwm sxhkd picom


systemctl enable --now NetworkManager
systemctl enable --now ly
systemctl enable --now bluetooth

sudo pacman -S os-prober

echo Enable os-prober: helix /etc/default/grub \|\| grub-mkconfig -o /boot/grub/grub.cfg
echo Place the dotfiles: cp \(LIN/.config/\)FOLDER ~/.config/FOLDER/
echo Chmod \"bspwm\" \in ~/.config/bspwm/ \|\| chmod +x bspwm
