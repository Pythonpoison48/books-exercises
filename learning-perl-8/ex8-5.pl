#!/usr/bin/env perl
use v5.42;

while (<>) {    # take one input line at a time
    chomp;
    if (/(?<word>\w+a+\b)(?<rest>\N{0,5})/) {
        print "'word' contains '$+{word}'\n";
        print "'rest' contains '$+{rest}'\n'";
    }
    else {
        print "No match: |$_|\n";
    }
}
