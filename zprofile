#!/usr/bin/env zsh

# Add user directories to path
export PATH="$HOME/.local/bin:$PATH"
typeset -U path # Remove duplicates from `path` array (mirrors `PATH`)

# Set neovim as default editor and skim as default reader
export EDITOR="nvim"
export VISUAL="nvim"
export READER="open -a skim"

# Set default locations
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Set program specific variables
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export GOPATH="$XDG_DATA_HOME/go"
export HISTFILE="$XDG_DATA_HOME/history"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

source "$CARGO_HOME/env"
