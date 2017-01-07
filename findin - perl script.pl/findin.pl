#!/usr/bin/perl

#use strict;
#use warnings;


#Robert Fink

scalar @ARGV >= 2 or die "findin.pl <path_to_file> <string1> <string2> ...\n";

my $logPath = @ARGV[0];
my %counters;

#open a file from command line argument or error
open my $fhandle, '<', $logPath or die "Could not open $logPath: - $!\n";

#loop through the command line arguments
foreach $p (@ARGV){

	if ($p ne $logPath){ #skip the filepath

		$counters{$p} = 0; #initialize counters key p

		while (my $line = <$fhandle>){ #step through the file line-by-line
			if (index($line, $p) != -1){ #if a match is found, increment the counter
				$counters{$p} += 1;
			}
		}
		seek $fhandle, 0, 0; #reset the file handle to the first line so we can loop through again with the next search string
	}
}

#print out the counters for the search strings
foreach (sort keys %counters) {
    print "$_ count is: $counters{$_}\n";
}
