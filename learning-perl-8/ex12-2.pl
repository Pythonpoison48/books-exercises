#!/usr/bin/env perl
use v5.42;
use utf8;

my $oldest = -e $ARGV[0] ? $ARGV[0] : "";

foreach my $n ( 1 .. $ARGV ) {
    if ( -e $ARGV[$n] && -M _ > $oldest ) {
        $oldest = $ARGV[$n];
    }

}

my $str =
  $oldest eq ""
  ? "No such file exists %s : %.1f"
  : "%s :  acces il y a  %.1f jours ";
printf( $str, $oldest, -M $oldest );
