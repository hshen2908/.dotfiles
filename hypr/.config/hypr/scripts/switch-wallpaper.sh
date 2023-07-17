#!/bin/bash

selected="$(/bin/ls ~/.config/hypr/wallpapers/|wofi --width 250 --height 230 --dmenu --cache-file /dev/null)"

imgpath="$HOME/.config/hypr/wallpapers/$selected"

swww init
echo $imgpath
swww img $imgpath --transition-type grow --transition-pos center --transition-duration 3
