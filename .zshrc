# .zshrc

# history length and location
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Auto cd into typed directory
setopt autocd

# vi-mode in shell
bindkey -v
export KEYTIMEOUT=1

# Prompt
setopt prompt_subst
autoload -U colors && colors
PROMPT="%B%n@%m%b %~ %(!.#.$) "
# if [[ -n "$VIRTUAL_ENV" ]] then
#     RPROMPT="%($VIRTUAL_ENV%)"
# fi

# Load completions
autoload -Uz compinit; compinit

# Allow select in menus
zstyle ':completion:*' menu select

# Case insensitive matching
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Load module for better completion listing
zmodload zsh/complist

# Autocomplete includes dotfiles
_comp_options+=(globdots)

# Vim keys to navigate complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Fix backspace in vim mode
bindkey -v '^?' backward-delete-char

alias e=$EDITOR
alias vim="nvim"

alias ls="ls -h --color=auto --group-directories-first"
alias ll="ls -hl --color=auto --group-directories-first"
alias la="ls -hlA --color=auto --group-directories-first"

alias grep="grep --color=auto"
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Syntax highlighting plugin
source "$ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
