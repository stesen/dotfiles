#!/usr/bin/perl

if (`pidof mocp`) {
	my $file = `mocp -i|head -2 |tail -1`;
	$file =~ s/\b.*\/(.*).(mp3|wma|ogg|flac)\b/$1/gi;
	print $file;
} else {
	print("NULL\n");
}
