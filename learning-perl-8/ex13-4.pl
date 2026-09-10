#!/usr/bin/env perl
use v5.42;

foreach my $f (@ARGV) {
    unlink $f;
}
