#!/bin/bash
ICON=~/.i3/scripts/lock/lock.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
#convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG  -fill black -colorize 70%  $TMPBG
convert $TMPBG  -channel RGBA  -blur 0x6  $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock --beep -u -i $TMPBG
