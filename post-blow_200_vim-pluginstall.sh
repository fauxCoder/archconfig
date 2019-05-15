#!/usr/bin/env bash

# Install vim plugins
pushd ~/
vim +'PlugInstall --sync' +qa
popd

# YCM install
pushd ~/.vim/plugged/YouCompleteMe/
./install.py --clang-completer --rust-completer --system-libclang
popd
