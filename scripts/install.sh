#!/bin/bash

# install video drivers
# sudo pacman -S nvidia

# install AUR helper
sudo pacman -S base-devel
cd $HOME; git clone https://aur.archlinux.org/yay-git.git
cd $HOME/yay-git; makepkg -si; cd $HOME; rm -rf $HOME/yay-git

# install display server
sudo pacman -S xorg xorg-xinit

# install window manager
## Awesomewm:
##sudo pacman -S awesome

## Leftwm:
sudo pacman -S feh # background images
sudo pacman -S polybar # panel
sudo pacman -S dmenu # menu
yay -S leftwm

# install compositor
sudo pacman -S picom

# install terminal emulator
sudo pacman -S alacritty

# install prompt
sudo pacman -S starship

# install text editor
sudo pacman -S neovim

# wallpaper
sudo pacman -S nitrogen

# install browser
sudo pacman -S firefox

# install ls sub
sudo pacman -S exa

# install stow
sudo pacman -S stow
cd $HOME/.dotfiles
stow --adopt bash
stow xorg
stow --adopt alacritty
git restore .
