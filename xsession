#!/bin/sh

source ~/.xdualpoint

xrandr --output HDMI1 --above eDP1 >> ~/.xrandr.log
xmodmap ~/.xkeymap

exec /usr/bin/i3
