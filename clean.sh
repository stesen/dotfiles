#!/bin/bash
sudo apt-get autoclean -y
sudo apt-get clean -y
#deborphan --guess-all|tr ["\n"] [" "]|sudo xargs apt-get remove --purge - -y
#sudo apt-get autoremove -y
dpkg -l |grep ^rc|awk '{print $2}' |tr ["\n"] [" "]|sudo xargs dpkg -P  -
#dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' |sudo xargs apt-get -y purge
#dpkg-query -l| grep -v "ii " | grep "rc " | awk '{print $2" "}' | tr -d "\n" |sudo xargs aptitude purge -y"
