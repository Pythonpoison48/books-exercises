#!/usr/bin/env perl
use v5.42;

my $dirname = ".";

opendir my ($dh), $dirname or die "Couldn't open dir '$dirname': $!";
my @files = readdir $dh;

my %times;
my $longest = $files[0];
foreach my $f (@files) {
    chomp($f);
    if ( $f eq "." || $f eq ".." ) {
        next;
    }
    @times{$f} = { atime => ( stat($f) )[8], mtime => ( stat($f) )[9] };
    print "" . ( stat($f) )[ 7, 8 ] . "\n";
    if ( length($f) > length($longest) ) {
        $longest = $f;
    }
}

foreach my $k ( sort keys %times ) {

    print "$k"
      . " " x ( length($longest) - length($k) + 1 )
      . " $times{$k}{atime}       $times{$k}{mtime}\n";
}
