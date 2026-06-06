#!/usr/bin/env bash

sudo pacman -S --needed - < pkglist-official.txt
yay -S --needed - < pkglist-aur.txt

stow bashrc  hypr  kitty  nvim  oh-my-bash  swaync  tmux  waybar  wofi
