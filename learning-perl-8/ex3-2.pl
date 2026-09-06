#!/usr/bin/env perl

@numbers = <STDIN>;
@names   = qw(
  fred
  betty
  barney
  dino
  wilma
  pebbles
  bamm-bamm
);

foreach $n (@numbers) {
    if ( $n > @names || $n < 0 ) {
        print;
    }
    else {
        print "$names[$n]\n";
    }

}
