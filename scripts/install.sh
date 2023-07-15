#!/bin/bash

# install video drivers
# sudo pacman -S nvidia

# install AUR helper
#sudo pacman -S --noconfirm base-devel
#cd $HOME; git clone https://aur.archlinux.org/yay-git.git
#cd $HOME/yay-git; makepkg -si; cd $HOME; rm -rf $HOME/yay-git

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


## Hyprland:
yay -S rustup
rustup default stable
yay -S hyprland-git waybar-hyprland-git cava waybar-mpris-git python kitty fish wofi xdg-desktop-portal-hyprland-git tty-clock-git swaylockd grim slurp pokemon-colorscripts-git starship jq dunst wl-clipboard swaylock-effects-git swww-git
git clone -b dreamy https://github.com/flick0/dotfiles
cd dotfiles
cp -r ./config/* ~/.config
mkdir ~/.config/hypr/store
touch ~/.config/hypr/store/dynamic_out.txt
touch ~/.config/hypr/store/prev.txt
touch ~/.config/hypr/store/latest_notif
chmod +x ~/.config/hypr/scripts/tools/*
chmod +x ~/.config/hypr/scripts/*
chmod +x ~/.config/hypr/*
cd ~
git clone https://github.com/flick0/rgb-rs
cd rgb-rs
cargo build --release
cp ./target/release/rgb ~/.config/hypr/scripts/

# install compositor
#sudo pacman -S --noconfirm picom

# install terminal emulator
#sudo pacman -S --noconfirm alacritty

# install prompt
#sudo pacman -S --noconfirm starship

# install text editors
sudo pacman -S --noconfirm neovim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

yay -S visual-studio-code-bin

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

# install file manager
sudo pacman -S ranger

# install discord
sudo pacman -S discord

# install stow
sudo pacman -S --noconfirm stow
cd $HOME/.dotfiles
stow --adopt bash
#stow --adopt xorg
#stow --adopt alacritty
#stow --adopt qtile
stow --adopt emacs
stow --adopt hypr
stow --adopt wofi
stow --adopt kitty
stow --adopt fish
stow --adopt starship
stow --adopt nvim
git restore .

doom sync

chsh -s /bin/fish

# install fonts
#git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts
#cd nerd-fonts
#git sparse-checkout add patched-fonts/JetBrainsMono patched-fonts/RobotoMono patched-fonts/Ubuntu
#./install.sh --install-to-user-path JetBrainsMono RobotoMono Ubuntu
#cd ..; rm -rf nerd-fonts
