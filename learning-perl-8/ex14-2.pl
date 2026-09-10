#!/usr/bin/env perl
use v5.42;

my %last_name = qw{
  fred flintstone Wilma Flintstone Barney Rubble
  betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

sub sort_routine {
    $last_name{$a} cmp $last_name{$b}
      or $a cmp $b;

}

foreach my $n ( sort sort_routine keys %last_name ) {
    print $n . "\n";
}
