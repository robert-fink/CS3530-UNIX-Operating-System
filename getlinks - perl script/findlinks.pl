#!/usr/bin/perl
use strict;
use warnings;

($#ARGV == 0) or die "Usage: $0 [filepath]\n";

my $filepath = shift @ARGV;

open(my $fh, '<:encoding(UTF-8)', $filepath) or die "Could not open file '$filepath' $!";

my $string = "";
while (my $line = <$fh>) {
	$string .= $line;
}

my @links = $string =~ /<a\s+[^>]*href="([^"]*)"[^>]*>/g;

for my $link (@links) {
	print $link, "\n";
}

print "Num links found = ", $#links + 1, "\n";
