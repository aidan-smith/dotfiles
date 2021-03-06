#!/usr/bin/env bash

DOTFILE_HOME=$(cd "$(dirname "$0")" ; pwd -P)

source "$DOTFILE_HOME/.zprofile"

mkdir "$HOME/.local/bin"
ln -s "$DOTFILE_HOME/bin/"* "$HOME/.local/bin"

ln -s "$DOTFILE_HOME/.zprofile" "$HOME/.zprofile"
ln -s "$DOTFILE_HOME/.zshrc" "$ZDOTDIR/.zshrc"
ln -s "$DOTFILE_HOME/nvim/init.lua" "$XDG_CONFIG_HOME/nvim/init.lua"
ln -s "$DOTFILE_HOME/nvim/lua" "$XDG_CONFIG_HOME/nvim/lua"
