#!/usr/bin/env bash

# Update
sudo pacman -Syu

# Install required packages
sudo pacman -S \
    cmake \
    clang \
    dmenu \
    fakeroot \
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
    xorg-xinit
