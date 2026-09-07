#!/usr/bin/env perl
use v5.42;

while (<STDIN>) {
    chomp;
    if (/[A-Z][a-z]+/) {
        print "$_ \t is good \n";
    }
    else {
        print "$_ \t is not good\n";
    }
}
