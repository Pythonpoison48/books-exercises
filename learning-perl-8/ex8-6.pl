#!/usr/bin/env perl
use v5.42;

while (<>) {    # take one input line at a time
    chomp;
    if (/\s$/) {
        print "$_#\n";
    }
    else {
        print "No match: |$_|\n";
    }
}
