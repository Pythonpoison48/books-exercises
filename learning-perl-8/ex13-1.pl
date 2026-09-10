#!/usr/bin/env perl
use v5.42;

print "Enter a directory name : ";
my $dirname = <STDIN>;

chomp($dirname);
if ( $dirname =~ /^\s$/ ) {
    chdir "/home/paul/";
}
else {
    chdir $dirname or die "Cannot chdir to $dirname $! ";

}

my @files = glob '* .*';

foreach my $f ( sort @files ) {
    print "$f\n";
}
