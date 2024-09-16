.PHONY: install all zsh vim nvim tmux alacritty scripts xdg-dirs gdbinit

DOTFILE_HOME := $(shell cd "$(dirname "$0")" ; pwd -P)

all install: zsh vim nvim tmux gdbinit

zsh:
	mkdir -p "$(ZDOTDIR)"
	mkdir -p "$(shell dirname $(HISTFILE))"
	ln -sf "$DOTFILE_HOME/zshenv" "$HOME/.zshenv"
	ln -sf "$(DOTFILE_HOME)/zshrc" "$(ZDOTDIR)/.zshrc"
	ln -sf "$(DOTFILE_HOME)/zprofile" "$(HOME)/.zprofile"

vim:
	ln -sf "$(DOTFILE_HOME)/vimrc" "$(HOME)/.vimrc"

nvim:
	ln -sf "$(DOTFILE_HOME)/nvim" "$(XDG_CONFIG_HOME)/nvim"

tmux:
	mkdir -p "$(XDG_CONFIG_HOME)/tmux"
	ln -sf "$(DOTFILE_HOME)/tmux.conf" "$(XDG_CONFIG_HOME)/tmux/tmux.conf"

alacritty:
	mkdir -p "$(XDG_CONFIG_HOME)/alacritty"
	ln -sf "$(DOTFILE_HOME)/alacritty.toml" "$(XDG_CONFIG_HOME)/alacritty/alacritty.toml"

scripts:
	mkdir -p "$(HOME)/.local/bin"
	ln -sf "$(DOTFILE_HOME)/bin/"* "$(HOME)/.local/bin"

gdbinit:
	ln -sf "$(DOTFILE_HOME)/gdbinit" "$(HOME)/.gdbinit"

xdg-dirs:
	mkdir -p "$(XDG_CONFIG_HOME)"
	mkdir -p "$(XDG_CACHE_HOME)"
	mkdir -p "$(XDG_DATA_HOME)"


