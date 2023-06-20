#!/bin/bash

# install video drivers
# sudo pacman -S nvidia

# install AUR helper
sudo pacman -S --noconfirm base-devel
cd $HOME; git clone https://aur.archlinux.org/yay-git.git
cd $HOME/yay-git; makepkg -si; cd $HOME; rm -rf $HOME/yay-git

# install display server
#sudo pacman -S --noconfirm xorg xorg-xinit

# install window manager
## Awesomewm:
##sudo pacman -S awesome

## Leftwm:
##sudo pacman -S --noconfirm feh # background images
##sudo pacman -S --noconfirm polybar # panel
##sudo pacman -S --noconfirm dmenu # menu
##yay --noconfirm -S leftwm

## Qtile:
#sudo pacman -S --noconfirm qtile

# install compositor
#sudo pacman -S --noconfirm picom

# install terminal emulator
sudo pacman -S --noconfirm alacritty

# install prompt
sudo pacman -S --noconfirm starship

# install text editor
sudo pacman -S --noconfirm neovim

## Emacs
git clone https://github.com/plexus/chemacs2 $HOME/.emacs.d
git clone https://github.com/doomemacs/doomemacs $HOME/.config/doom-emacs
sudo pacman -S --noconfirm emacs

# ssh
sudo pacman -S --noconfirm openssh

# wallpaper
#sudo pacman -S --noconfirm nitrogen

# install browser
#sudo pacman -S --noconfirm firefox

# install ls sub
sudo pacman -S --noconfirm exa

# install stow
sudo pacman -S --noconfirm stow
cd $HOME/.dotfiles
stow --adopt bash
stow --adopt xorg
stow --adopt alacritty
stow --adopt qtile
stow --adopt emacs
git restore .

doom sync

# install fonts
#git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts
#cd nerd-fonts
#git sparse-checkout add patched-fonts/JetBrainsMono patched-fonts/RobotoMono patched-fonts/Ubuntu
#./install.sh --install-to-user-path JetBrainsMono RobotoMono Ubuntu
#cd ..; rm -rf nerd-fonts
