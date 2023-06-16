#!/usr/bin/env bash

DOTFILE_HOME=$(cd "$(dirname "$0")" ; pwd -P)
# DOTFILE_HOME=$(readlink -f "$0")

source "$DOTFILE_HOME/zprofile"

# User scripts
mkdir "$HOME/.local/bin"
ln -s "$DOTFILE_HOME/bin/"* "$HOME/.local/bin"

# Zsh
mkdir -p "$ZDOTDIR"
ln -s "$DOTFILE_HOME/zprofile" "$HOME/.zprofile"
ln -s "$DOTFILE_HOME/zshrc" "$ZDOTDIR/.zshrc"

# Neovim
ln -s "$DOTFILE_HOME/nvim" "$XDG_CONFIG_HOME/nvim"

# Tmux
mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -s "$DOTFILE_HOME/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"

# Alacritty
mkdir -p "$XDG_CONFIG_HOME/alacritty"
ln -s "$DOTFILE_HOME/alacritty.yml" "$XDG_CONFIG_HOME/alacritty/alacritty.yml"
