#!/usr/bin/perl
use strict;
use warnings;

($#ARGV == 0) or die "Usage: $0 [date]\n";

my $date = shift @ARGV;

#these formats are valid: YYYY-MM-DD, MM/DD/YYYY, MM/DD/YY, MON DD, YYYY
my @valid = $date =~ /^[0-9]{2}\/[0-9]{2}\/([0-9]{4})$|^([0-9]{4})-[0-9]{2}-[0-9]{2}$|^[0-9]{2}\/[0-9]{2}\/([0-9]{2})$|^(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s+([0-9]{2}),\s+([0-9]{4})$/g;


for my $s (@valid) {
  if ($s){
    if (defined $1){
      print $date . " is valid. The year is " . $1 .  ".\n";
    }
    if (defined $2){
      print $date . " is valid. The year is " . $2 .  ".\n";
    }
    if (defined $3){
      print $date . " is valid. The year is " . $3 .  ".\n";
    }
    if (defined $6){
      print $date . " is valid. The year is " . $6 .  ".\n";
      exit;
    }
  }
}
