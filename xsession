#!/bin/sh

source ~/.xdualpoint

exec xrandr --output HDMI1 --above eDP1

xmodmap ~/.xkeymap


exec /usr/bin/i3
