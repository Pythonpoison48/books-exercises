#!/usr/bin/env perl
use v5.42;

my $str = "This is a test.";
chomp( my $letter = <STDIN> );

my $idx = index( $str, $letter );

while ( $idx != -1 ) {
    print "$idx\n";
    $idx = index( $str, $letter, $idx + 1 );
}
