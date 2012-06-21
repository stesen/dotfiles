#!/bin/sh

cd /home/stesen/.config/openbox/myexit
scrot -q 50 img/bg.jpg
convert img/bg.jpg -blur 0x3 img/bg.jpg
./my_exit.py
