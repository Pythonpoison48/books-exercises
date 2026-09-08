#!/usr/bin/env perl
use v5.42;

foreach my $f (@ARGV) {
    chomp($f);
    open( my $fh, '<', $f );
    read( $fh, my $c, -s $fh );
    print $c;
    $c =~ s/fred/Larry/ig;

    open( my $ofh, '>', "${f}.out" );

    print $ofh ("$c");
}
