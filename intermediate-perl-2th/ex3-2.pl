#!/usr/bin/env perl
use v5.40;

my $dir = "/etc";

while (1) {
    chomp( my $pattern = <STDIN> );
    if ( $pattern =~ /^[\s\n]*$/ ) {
        exit;
    }
    my @files = glob("$dir/* .*");
    eval {
        my @results = grep { $_ =~ /$pattern/ } @files;
        map { print "$_\n" } @results;
    }

}
