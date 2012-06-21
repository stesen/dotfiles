#!/bin/bash
ans=$(zenity --list --title "Make your choice" \
    --width=100 --height=250 --column "Choice" \
    Logout Suspend Reboot Poweroff Lock);
echo $ans
case $ans in
    'Logout')
        killall openbox && killall fcitx
        ;;
    'Reboot')
        sudo shutdown -r now
        ;;
    'Poweroff')
        sudo shutdown -h now
        ;;
    'Suspend')
        sudo pm-suspend
        ;;
    'Lock')
        xlock
        ;;
esac
