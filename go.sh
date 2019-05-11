#!/bin/bash

# I'm guessing you've got git already.
# You'll need fish too.

# Update
pacman -Syu

# Reqs.
pacman -S \
python \
rust \
vim \
xmonad \
xmonad-contrib

# Copy configs
./blow.fish

# YCM install
pushd ~/.vim/plugged/YouCompleteMe/
./install.py --clang-completer --rust-completer --system-libclang
popd
