#!/bin/sh

if [ -n `pidof mocp` ];then
mocp -S
fi
