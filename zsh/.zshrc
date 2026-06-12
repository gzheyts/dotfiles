# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.zsh-custom
eval `dircolors ~/.dircolors/dircolors.mine`

# ZSH_THEME="af-magic"
# ZSH_THEME="wezm"
ZSH_THEME="nicoulaj"

ENABLE_CORRECTION="true"

# ZSHZ setings
export ZSHZ_CASE=smart

plugins=(
	command-not-found
        zsh-autosuggestions
	cp
	docker
	docker-compose
	extract
	git
	httpie
	jump
	last-working-dir
	mvn
	rsync
	systemd
	tmux
	vi-mode
	vundle
        colored-man-pages
        compleat
        fzf
        gitignore
        grc
        helm
        history
        httpie
        kubectl
        minikube
        sdk
        snap
        spring
        svn
        svn-fast-info
        taskwarrior
        timer
        tmuxinator
        ubuntu
        vault
        web-search
        zoxide
)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

export PATH="$PATH:$HOME/.bin:$HOME/.local/bin"

setopt no_nomatch
