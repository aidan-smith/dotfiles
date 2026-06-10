#!/usr/bin/env zsh

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export GOPATH="$XDG_DATA_HOME/go"
export NPM_CONFIG_PREFIX="$XDG_DATA_HOME/npm"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"

export EDITOR="nvim"
export VISUAL="nvim"
export TMPDIR="$HOME/.local/tmp"
export HISTFILE="$XDG_STATE_HOME/history"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

[ -n "${ZSH_VERSION-}" ] || return 0

typeset -U path
path=(
    "$HOME/.local/bin"
    "$CARGO_HOME/bin"
    "$GOPATH/bin"
    "$NPM_CONFIG_PREFIX/bin"
    $path
)

path=(
  "/usr/local/opt/llvm/bin"
  "/usr/local/opt/bison/bin"
  "/usr/local/smlnj/bin"
  $path
)
