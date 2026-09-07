#!/usr/bin/env perl
use v5.42;

while (<STDIN>) {
    chomp;
    if (/\./) {
        print "$_ \t as a dot \n";
    }
    else {
        print "$_ \t doesn't have a dot \n";
    }
}
