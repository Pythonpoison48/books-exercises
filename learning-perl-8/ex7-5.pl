#!/usr/bin/env perl
use v5.42;

while (<STDIN>) {
    chomp;
    if (/(\S)\1/) {
        print "$_ \t match \n";
    }

}
