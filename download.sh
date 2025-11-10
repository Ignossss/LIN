#!/bin/bash
set -e

sudo pacman -Syu --noconfirm

sudo pacman -S --needed --noconfirm \
  mesa vulkan-radeon mesa-vulkan-drivers \
  nvidia nvidia-utils nvidia-settings lib32-nvidia-utils \
  vulkan-icd-loader

yay -S --needed --noconfirm \
  hyprland ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms \
  libxfixes libx11 libxcomposite libxrender libxcursor pixman \
  wayland-protocols cairo pango libxkbcommon xcb-util-wm \
  xorg-xwayland libinput libliftoff libdisplay-info cpio \
  tomlplusplus hyprlang-git hyprcursor-git hyprwayland-scanner-git \
  xcb-util-errors hyprutils-git glaze hyprgraphics-git \
  aquamarine-git re2 hyprland-qtutils-git playerctl 

sudo pacman -S --needed --noconfirm \
  xdg-desktop-portal xdg-desktop-portal-hyprland

yay -S --needed --noconfirm \
  hyprpaper  hypridle

yay -S --needed --noconfirm \
  mako pamixer bluez bluez-utils grim slurp fuzzel neovim waybar 

sudo systemctl enable --now bluetooth.service
