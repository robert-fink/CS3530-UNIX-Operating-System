#!/usr/bin/perl
use strict;
use warnings;

my $string = "toy='truck' color='red' cat='purrdy' dog='beagle' car='toyota' dog='mut' apple='delicious' dog='shepherd' color='blue'";
my @properties = ("dog", "color", "toy", "apple");

foreach my $prop (@properties){
	while ($string =~ /($prop)='(\w+)'/g){
		my $start1 = $-[1];
		my $end1 = $+[1] - 1;
		my $start2 = $-[2];
		my $end2 = $+[2] - 1;
		print $1 . " at " . $start1 . ", " . $end1 . " type " . $2 . " at " . $start2 . ", " . $end2 . "\n";
	}
}
