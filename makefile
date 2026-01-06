.PHONY: install all zsh vim nvim tmux alacritty scripts dirs gdbinit gitconfig clean

DOTFILE_HOME := $(shell cd "$(dirname "$0")" ; pwd -P)
OBJS :=  $(HOME)/.zshenv                              \
		 $(ZDOTDIR)/.zshrc                            \
		 $(ZDOTDIR)/.zprofile                         \
		 $(HOME)/.vimrc                               \
		 $(XDG_CONFIG_HOME)/nvim                      \
		 $(XDG_CONFIG_HOME)/tmux/tmux.conf            \
		 $(XDG_CONFIG_HOME)/alacritty/alacritty.toml  \
		 $(HOME)/.gdbinit                             \
		 $(HOME)/.gitconfig                           \

install all: dirs zsh vim nvim tmux gdbinit gitconfig

world: install alacritty scripts

zsh:
	mkdir -p "$(ZDOTDIR)"
	mkdir -p "$(shell dirname $(HISTFILE))"
	ln -sf "$(DOTFILE_HOME)/zshenv" "$(HOME)/.zshenv"
	ln -sf "$(DOTFILE_HOME)/zshrc" "$(ZDOTDIR)/.zshrc"
	ln -sf "$(DOTFILE_HOME)/zprofile" "$(ZDOTDIR)/.zprofile"

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

scripts: dirs
	ln -sf "$(DOTFILE_HOME)/bin/"* "$(HOME)/.local/bin"

gdbinit:
	ln -sf "$(DOTFILE_HOME)/gdbinit" "$(HOME)/.gdbinit"

gitconfig:
	ln -sf "$(DOTFILE_HOME)/gitconfig" "$(HOME)/.gitconfig"

dirs:
	mkdir -p "$(HOME)/.local/bin"
	mkdir -p "$(XDG_CONFIG_HOME)"
	mkdir -p "$(XDG_CACHE_HOME)"
	mkdir -p "$(XDG_DATA_HOME)"

clean:
	rm -rf $(OBJS)
