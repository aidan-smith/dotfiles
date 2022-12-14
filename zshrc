# History length and location
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

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '(%F{magenta}%b%f)'
zstyle ':vcs_info:git:*' actionformats '(%F{magenta}%b%f-%F{red}%a%f)'

export VIRTUAL_ENV_DISABLE_PROMPT=1
pyvenv() { [[ -n "$VIRTUAL_ENV" ]] && echo "[${VIRTUAL_ENV##*/}]" }

PROMPT='%F{green}%B%n@%m%f%b:%F{blue}%B%~%f%b${vcs_info_msg_0_}%(!.#.$) '
RPROMPT='$(pyvenv)'

# Load completions
autoload -Uz compinit && compinit

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

if [[ -x "$(command -v gls)" ]] then;
    alias ls="gls -h --color=auto --group-directories-first"
    alias ll="gls -hl --color=auto --group-directories-first"
    alias la="gls -hlA --color=auto --group-directories-first"
elif [[ "$OSTYPE" == "linux-gnu"* ]] then;
    alias ls="ls -h --color=auto --group-directories-first"
    alias ll="ls -hl --color=auto --group-directories-first"
    alias la="ls -hlA --color=auto --group-directories-first"
elif [[ "$OSTYPE" == "darwin"* || "$OSTYPE" == "freebsd"* ]] then;
    alias ls="ls -hG"
    alias ll="ls -hlG"
    alias la="ls -hlAG"
fi

alias grep="grep --color=auto"
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Syntax highlighting plugin
source "$ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" 2> /dev/null
