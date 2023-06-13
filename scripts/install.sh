#!/bin/bash

# install video drivers
sudo pacman -S nvidia

# install display server
sudo pacman -S xorg xorg-xinit

# install compositor
sudo pacman -S picom

# install terminal emulator
sudo pacman -S alacritty

# install text editor
sudo pacman -S neovim

# wallpaper
sudo pacman -S nitrogen

# install browser
sudo pacman -S firefox

# install AUR helper
sudo pacman -S base-devel
cd $HOME; git clone https://aur.archlinux.org/yay-git.git
cd $HOME/yay-git; makepkg -si; cd $HOME; rm -rf $HOME/yay-git

# install stow
sudo pacman -S stow
cd $HOME/.dotfiles
stow bash
stow xorg
