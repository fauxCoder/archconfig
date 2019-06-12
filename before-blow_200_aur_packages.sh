#!/usr/bin/env bash

# AUR packages
package_urls=(\
    https://aur.archlinux.org/bear.git \
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
