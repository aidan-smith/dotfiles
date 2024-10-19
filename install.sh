#!/usr/bin/env bash

DOTFILE_HOME=$(cd "$(dirname "$0")" ; pwd -P)

source "$DOTFILE_HOME/zprofile"
source "$DOTFILE_HOME/zshrc"
tmux source-file "$DOTFILE_HOME/tmux.conf"

mkdir -p "$(HOME)/.local/bin"
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CACHE_HOME"
mkdir -p "$XDG_DATA_HOME"

# zsh
mkdir -p "$ZDOTDIR"
mkdir -p "$(dirname $HISTFILE)"
ln -sf "$DOTFILE_HOME/zshenv" "$HOME/.zshenv"
ln -sf "$DOTFILE_HOME/zprofile" "$ZDOTDIR/.zprofile"
ln -sf "$DOTFILE_HOME/zshrc" "$ZDOTDIR/.zshrc"

# vim
ln -sf "$DOTFILE_HOME/vimrc" "$HOME/.vimrc"

# Neovim
ln -sf "$DOTFILE_HOME/nvim" "$XDG_CONFIG_HOME/nvim"

# tmux
mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -sf "$DOTFILE_HOME/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"

# gdb
ln -sf "$DOTFILE_HOME/gdbinit" "$HOME/.gdbinit"

# alacritty
# mkdir -p "$XDG_CONFIG_HOME/alacritty"
# ln -sf "$DOTFILE_HOME/alacritty.yml" "$XDG_CONFIG_HOME/alacritty/alacritty.yml"
# ln -sf "$DOTFILE_HOME/alacritty.toml" "$XDG_CONFIG_HOME/alacritty/alacritty.toml"

# User scripts
mkdir "$HOME/.local/bin"
# ln -sf "$DOTFILE_HOME/bin/"* "$HOME/.local/bin"

