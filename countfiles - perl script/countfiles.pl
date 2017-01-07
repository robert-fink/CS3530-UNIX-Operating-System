#!/usr/bin/perl


use File::Find;

($#ARGV == 0) or die "Usage: $0 [path] \n";

my $path = shift @ARGV;
my $count = 0;

find(\&count_files, $path);

print "Number of files: $count\n";

sub count_files{
	$File::Find::name, if -f $count++;
}


