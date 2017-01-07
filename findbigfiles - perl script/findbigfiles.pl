#!/usr/bin/perl

use File::Find;

($#ARGV == 1) or die "Usage: $0 [path] [size] \n";

my ($path, $numFiles) = @ARGV;
my $count = 0;
my @big_files = ();
my $i = 0;
my %list;

find(\&find_big_files, $path);

my @files = sort { $list{$b} <=> $list{$a} } keys %list;
splice @files, $numFiles if @files > $numFiles; 
foreach (@files) {
	print "\t$list{$_} \t\t $_\n";
}

sub find_big_files{
#        return unless -f;
#	my $fsize = -s $File::Find::name;
#	my $fname = $File::Find::name;
	$list{$File::Find::name} = -s if -f;;
}
