#!/usr/bin/env perl
use v5.40;

my @files = grep {
    my $size = ( stat($_) )[7];
    $size > 1000;

} @ARGV;

@files = map { "   " . $_ . "\n" } @files;

print @files;

# or else

my @smaller_than_1000 = grep { (-s) < 1000 } @ARGV;

print map { "    $_\n" } grep { (-s) < 1000 } @ARGV;
