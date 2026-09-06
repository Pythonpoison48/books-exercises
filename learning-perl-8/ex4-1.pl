#!/usr/bin/env perl
use Method::Signatures;
use utf8;
use strict;

sub total {
    my $c = 0;
    foreach (@_) {
        $c += $_;
    }
    $c;
}

my @list = qw{ 1  3  5  7  9  };

print &total(@list);
