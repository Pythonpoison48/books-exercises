#!/usr/bin/env perl
use v5.42;

my @users = <STDIN>;

my %hash = (
    "fred"   => "flintstone",
    "barney" => "rubble",
    "wilma"  => "flintstone"
);

foreach my $u (@users) {
    chomp($u);
    print "$hash{$u}";
}
