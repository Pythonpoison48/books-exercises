#!/usr/bin/env perl
use v5.42;

while (<STDIN>) {
    chomp;
    if (/(f|F)red/) {
        print "$_ \t does match \n";
    }
    else {
        print "$_ \t doesn't match \n";
    }
}
