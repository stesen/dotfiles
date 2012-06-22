#!/usr/bin/env perl

#########################################################################
# Author: stesen
# Created Time: Wed 20 Oct 2010 12:36:25 PM CST
# File Name: xmms2.pl
# Description:
#########################################################################

my $name = `xmms2 info|tail -1|cut -d" " -f4`;
chomp($name);
$name =~ s/\b.*\///g;
$name =~ s/(\.mp3)|(\.wma)|(\.ogg)//g;
$name =~ s/\b(.............................).*\b/$1/;

unless ($name =~ /\bERROR/) {
    print $name;
}
