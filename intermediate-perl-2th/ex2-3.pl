#!/usr/bin/env perl
use v5.40;
use Business::ISBN;

my $isbn = Business::ISBN->new('9781449393090');

say $isbn->group_code;

say $isbn->publisher_code;
