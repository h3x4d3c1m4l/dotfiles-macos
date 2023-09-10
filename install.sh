#!/bin/sh

# https://scriptingosx.com/2021/03/script-identity-crisis-get-the-path-to-the-current-script/
DOTFILES=$(dirname $(zsh -c 'echo ${0:A}' "$0"))

# zsh
ln -sf $DOTFILES/.profile ~/.profile
ln -sf $DOTFILES/.zshrc ~/.zshrc

# yabai/skhd (for yabai's hotkeys)
mkdir -p ~/.config/skhd
ln -sf $DOTFILES/.yabairc ~/.yabairc
ln -sf $DOTFILES/.config/skhd/skhdrc ~/.config/skhd/skhdrc

# apps
mkdir -p ~/.config/kitty
ln -sf $DOTFILES/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
