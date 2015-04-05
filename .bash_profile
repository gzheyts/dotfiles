#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export EDITOR=vim

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx &> ~/.xlog

