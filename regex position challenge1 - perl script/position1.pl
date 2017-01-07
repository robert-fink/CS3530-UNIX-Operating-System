#!/usr/bin/perl
use strict;
use warnings;

my $string = "toy='truck' color='red' cat='purrdy' dogs='beagle' car='toyota' doggy='mut' apple='delicious' dog='shepherd' colour='blue'";

while ($string =~ /(doggy)='(\w+)'|(dogs)='(\w+)'|(dog)='(\w+)'/g){
	print $1 . " at " . $- . ", " . $+ . "type " . $2 . " at " . $- . $+ . "\n";
}

