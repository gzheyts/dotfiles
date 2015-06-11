#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

#LibreOffice toolbars unreadable with dark themes
export VCL_ICONS_FOR_DARK_THEME=1

export QT_QPA_PLATFORMTHEME="qt5ct"

#fonts
xset +fp /usr/share/fonts/local
xset +fp ~/.local/share/fonts
xset fp rehash
#x cursor
xsetroot -cursor_name left_ptr &
#no bell
xset b off
#display power
xset 360 120
#fix repeat of arrow keys
xset r 111
xset r 113
xset r 114
xset r 116
#typematic delay/ rate
xset r rate 200 20

#autocutsel -fork &
#autocutsel -selection PRIMARY -fork &

# ramdisk setup 
# [[ -f ~/bin/ramdisk-restore ]] && . ~/bin/ramdisk-restore 

# [[ -f ~/bin/twinview ]] && . ~/bin/twinview 

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# xcompmgr -fF &
# compton -bc  & # xcompmgr fork

exec i3 -V >> ~/.i3/i3log 2>&1

