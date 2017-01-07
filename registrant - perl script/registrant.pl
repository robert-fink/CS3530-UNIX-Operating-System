#!/usr/bin/perl

use strict;
use warnings;

($#ARGV == 0) or die "Usage: $0 [domain]\n";

my $domain = shift @ARGV;

my $string = `whois $domain`;

my @name = $string =~ /Registrant\s+Name:\s+(\w+\s+\w+)/g; #match the Registrant Name
my @email = $string =~ /Registrant\s+Email:\s+(.+@.+\.{1}\w{2,3})/g; #match the Registrant Email, 2 or 3 digits allowed for top level domain
my @number = $string =~ /Registrant\s+Phone:\s+(\+\d{1,3}\.{1}\d{10})/g; #match the Registrant Phone Number, with 1-3 digit country allowed

print @name, "\n";
print @email, "\n";
print @number, "\n";
