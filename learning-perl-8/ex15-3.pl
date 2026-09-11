#!/usr/bin/env perl
use v5.42;

my $date = `date`;

if ( $date =~ /(dim)|(sam)/ ) {
    print "go play\n";
}
else {
    print "get to work\n";
}
