#!/usr/bin/env perl
use v5.42;

sub sort_routine {
    $a <=> $b;
}

foreach my $n ( sort sort_routine @ARGV ) {
    print $n . "\n";
}
