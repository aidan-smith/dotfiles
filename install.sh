#!/usr/bin/env bash

DOTFILE_HOME=$(cd "$(dirname "$0")" ; pwd -P)
# DOTFILE_HOME=$(readlink -f "$0")

source "$DOTFILE_HOME/zprofile"

mkdir "$HOME/.local/bin"
ln -s "$DOTFILE_HOME/bin/"* "$HOME/.local/bin"

mkdir "$ZDOTDIR"
ln -s "$DOTFILE_HOME/zprofile" "$HOME/.zprofile"
ln -s "$DOTFILE_HOME/zshrc" "$ZDOTDIR/.zshrc"

mkdir "$XDG_CONFIG_HOME/nvim"
ln -s "$DOTFILE_HOME/nvim/init.lua" "$XDG_CONFIG_HOME/nvim/init.lua"
ln -s "$DOTFILE_HOME/nvim/lua" "$XDG_CONFIG_HOME/nvim/lua"
