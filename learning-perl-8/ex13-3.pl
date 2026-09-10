#!/usr/bin/env perl
use v5.42;

print "Enter a directory name : ";
my $dirname = <STDIN>;

chomp($dirname);
if ( $dirname =~ /^\s$/ ) {
    $dirname = "/home/paul";
}

opendir my $dir, $dirname or die "Cannot open $dirname : $!";

foreach my $f ( readdir $dir ) {
    print "$f\n";
}
