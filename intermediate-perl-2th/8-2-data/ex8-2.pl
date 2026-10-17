#!/usr/bin/env perl
use v5.42;

my %list_hash;

open my $fh , '<', $ARGV[0] or die print "can't open $ARGV[0]: $!";
foreach my $l (<$fh>){
    $l =~ /([a-zA-Z]*):([a-zA-Z0-9\s]*)/ ;
    unless (exists($list_hash{$1})){
        open $list_hash{$1}, '>', "$1.info";
    }
    print {$list_hash{$1}} "$l";
}
