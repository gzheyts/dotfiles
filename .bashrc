# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
        . /etc/bash.bashrc
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

set -o vi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

export TERM=xterm-256color


[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

HISTSIZE=1000
HISTFILESIZE=2000

function include {
    local _path=$1
    local _filename=$2 
    local _fullScriptPath=$_path/$_filename

    if [ -f $_fullScriptPath ]; then
	source $_fullScriptPath
    fi
}

include $HOME .bash_aliases # custom bash aliases
include $HOME .pacman_aliases # custom pacman  aliases

eval `dircolors ~/.dircolors/dircolors.ansi-light`

if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
    fi
fi

PS1='[\u@\[\e[0;'$PS1_hostcolor'm\]\h\[\e[0m\] \w]\$ '
export PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007\a" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
export EDITOR=vim
export GREP_COLOR='00;38;5;226'
export MANPATH="${MANPATH}:${HOME}/.man"
export MC_SKIN=xoria256.ini


function cls {
	printf "\ec";
}


unset include # remove unnecessary


function be {
 js-beautify $1 > $1-beautified
 mv $1-beautified $1
}


# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt

# bashmarks
. ~/.local/bin/bashmarks.sh
source ~/.commacd.bash
