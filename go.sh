#!/bin/bash

# I'm guessing you've got git already.

# Update
pacman -Syu

# Reqs.
pacman -S \
    dmenu \
    fish \
    nerd-fonts-inconsolata \
    python \
    rust \
    ttf-inconsolata \
    vim \
    xmonad \
    xmonad-contrib \
    xorg-server

# Copy configs
./blow.fish

# Install vim plugins
vim +'PlugInstall --sync' +qa

# YCM install
pushd ~/.vim/plugged/YouCompleteMe/
./install.py --clang-completer --rust-completer --system-libclang
popd
