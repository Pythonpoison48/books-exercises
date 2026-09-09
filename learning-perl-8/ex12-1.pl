#!/usr/bin/env perl
use v5.42;

foreach my $f (@ARGV) {
    if ( !-e $f ) {
        print "$f doesn't exist\n";
        next;
    }
    print "$f exist\n";

    if ( -r _ ) {
        print "$f is readable\n";
    }

    if ( -w _ ) {
        print "$f is writable\n";
    }

    if ( -x _ ) {
        print "$f is executable\n";
    }


}
