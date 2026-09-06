#!/usr/bin/env perl
use v5.42;

my $longest = 0;

foreach my $k ( sort keys %ENV ) {
    if ( length($k) > length($longest) ) {
        $longest = $k;
    }

}

foreach my $k ( sort keys %ENV ) {
    print "$k" . " " x ( length($longest) - length($k) + 1 ) . ": $ENV{$k}\n";
}
