#!/usr/bin/env perl
use v5.42;

foreach my $f (@ARGV) {
    if ( -e $f && -o _ && -r _ && -w _ ) {
        print "$f exist, is readable , writable and owned by you \n";
    }

}
