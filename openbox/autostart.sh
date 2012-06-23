#!/bin/bash

tint2 > /dev/null 2>&1 &
xbindkeys &
dzen2_info.sh &
feh --bg-scale ~/pic/random/sidux-hypnos.png &
(pytyle2 2>/dev/null) &
xcompmgr-dana -cCfF -t-5 -l-5 -r4.2 -o.55 -D3 -m.86 &
#xcompmgr &
#mocp -S &
#/home/stesen/.config/openbox/mocp.sh &
#/home/stesen/.config/xmms2/start_xmms2.sh &
#trayer --align right --edge top --height 15 --transparent true --expand false --widthtype request &
volumeicon &
#(sleep 4s && netwmpager) &
#ipager &
sleep 10 && fcitx &
#(/home/stesen/.config/conky/start.sh 2>/dev/null) &
#sudo /home/stesen/tools/scripts/skvm &
nm-applet &
conky -c .config/conky/conkyrc-sys &
#/home/stesen/tools/scripts/dropbox_init.sh

# xcompmgr-dana &
