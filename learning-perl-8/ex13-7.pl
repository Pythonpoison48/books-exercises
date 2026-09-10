#!/usr/bin/env perl
use v5.42;

if ( $ARGV[0] ) {
    chdir $ARGV[0];
}

my @files = glob "* .*";

foreach my $f (@files) {
    if ( -l $f ) {
        print $f . " -> " . readlink($f) . "\n";
    }
}
