#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#  for f in /etc/X11/xinit/xinitrc.d/*; do
#    [ -x "$f" ] && . "$f"
#  done
#  unset f
#fi


setxkbmap -layout gb
xsetroot -cursor_name left_ptr
eval $(gpg-agent --daemon)
xautolock -time 10 -locker ~/.local/bin/lockscreen &
compton -cG&
xrdb -merge ~/.xdefaults
nitrogen --restore
xset +fp ${HOME}/.fonts
xset fp rehash
xrandr --output DFP10 --auto --primary
xrandr --output DFP11 --auto --right-of DFP10
Esetroot -s "/home/itsajamesday/.config/bspwm/Wallpaper.jpg"
panel &
sxhkd &
exec bspwm

