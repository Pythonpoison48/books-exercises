#!/usr/bin/env perl

sub total {
    my $c = 0;
    foreach (@_) {
        $c += $_;
    }
    $c;
}

print &total( 1 .. 1000 );
