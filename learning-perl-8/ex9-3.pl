#!/usr/bin/env perl
use v5.42;

foreach my $f (@ARGV) {
    chomp($f);
    open( my $fh, '<', $f );
    read( $fh, my $c, -s $fh );
    $c =~ s/Fred/temp_value/ig;
    $c =~ s/Wilma/Fred/ig;
    $c =~ s/temp_value/Wilma/ig;
    open( my $ofh, '>', "${f}.out" );
    print $ofh ("$c");
}
