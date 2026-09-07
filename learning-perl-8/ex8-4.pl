#!/usr/bin/env perl
use v5.42;

while (<>) {    # take one input line at a time
    chomp;
    if (/(?<word>\b\w*a\b)/) {
        print "'word' contains '$+{word}'\n";
    }
    else {
        print "No match: |$_|\n";
    }
}
