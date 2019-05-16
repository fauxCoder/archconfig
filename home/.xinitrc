#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# VirtualBox start guest utils if it exists
if [ -x "$(command -v VBoxClient-all)" ]; then
    VBoxClient-all
fi

# dvorak
setxkbmap -model pc104 -layout us -variant dvorak

# set left-pointer
xsetroot -cursor_name left_ptr

# stop screen blanking
xset s off -dpms

# resolution setting
xrandr --output Virtual-1 --mode 1680x1050 --rate 60

# select a background
~/bg/rotate.fish

exec xmonad
