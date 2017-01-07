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

my @titles = $string =~ /<title>(.+)<\/title>/g;
my @strong = $string =~ /<strong>(.+)<\/strong>/g;
my @heads = $string =~ /<h[1-6]\s*[^>]*>(.+)<\/h[1-6]>/g;

print "\n";
for my $title (@titles) {
	print $title, "\n";
}

print "Num titles found = ", $#titles + 1, "\n\n";

for my $strong (@strong) {
	print $strong, "\n";
}

print "Num strong found = ", $#strong + 1, "\n\n";

for my $head (@heads) {
	print $head, "\n";
}

print "Num headers found = ", $#heads + 1, "\n\n";
