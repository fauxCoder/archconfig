#!/bin/bash

# I'm guessing you've got git already.

# Update
pacman -Syu

# Reqs.
pacman -S \
    dmenu \
    fish \
    python \
    rust \
    ttf-inconsolata \
    vim \
    xmonad \
    xmonad-contrib \
    xorg-server

# AUR packages
package_urls=(\
    https://aur.archlinux.org/nerd-fonts-inconsolata.git \
)

mkdir -p ~/aur
pushd ~/aur
for p in "${package_urls[@]}"; do
    git clone "$p" && pushd "$(basename "$p" .git)"
    makepkg -sri
    popd
done
popd

# Copy configs
./blow.fish

# Install vim plugins
vim +'PlugInstall --sync' +qa

# YCM install
pushd ~/.vim/plugged/YouCompleteMe/
./install.py --clang-completer --rust-completer --system-libclang
popd
