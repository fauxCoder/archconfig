#!/usr/bin/env bash

# Update
sudo pacman -Syu

# Install required packages
sudo pacman --sync --needed \
    clang \
    cmake \
    dmenu \
    fakeroot \
    feh \
    fish \
    fzf \
    make \
    python \
    rust \
    the_silver_searcher \
    ttf-inconsolata \
    vim \
    xmonad \
    xmonad-contrib \
    xorg-server \
    xorg-xinit \
    xorg-xrandr
