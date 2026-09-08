#!/usr/bin/env perl
use v5.42;

my $what = <STDIN>;
chomp($what);
while (<STDIN>) {
    chomp;
    if (/$what{3}/) {
        print "$_ \t match \n";
    }
    else {
        print "$_ \t doesn't match \n";
    }
}
