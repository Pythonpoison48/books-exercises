#!/usr/bin/env perl
use v5.42;
use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.034} };

foreach my $m ( sort keys %modules ) {
    print "$m : $modules{$m}\n";
}
