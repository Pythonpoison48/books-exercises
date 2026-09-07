#!/usr/bin/env perl
use v5.42;

while (<>) {    # take one input line at a time
    chomp;
    if (/(\b\w*a\b)/) {
        print "\$1 contains '$1'\n";
    }
    else {
        print "No match: |$_|\n";
    }
}
