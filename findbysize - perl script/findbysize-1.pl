#!/usr/bin/perl

use File::Find;

($#ARGV == 1) or die "Usage: $0 [path] [size] \n";

my ($path, $minSize) = @ARGV;
my $count = 0;
my @big_files = ();

find(\&big_files, $path);

sub big_files{
	my $size = -s $File::Find::name;
	
	if ($size >= $minSize){
		print "$File::Find::name\n" if -f;;
	}	
}
