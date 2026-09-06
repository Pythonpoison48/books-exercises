#!/usr/bin/env perl
use v5.42;

my @lines = <STDIN>;

my %hash = ();

foreach my $l (@lines) {
    chomp($l);
    $hash{$l} += 1;
}

foreach my $k ( sort keys %hash ) {
    print "$k : $hash{$k}\n";
}
