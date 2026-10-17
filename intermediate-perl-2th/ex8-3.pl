#!/usr/bin/env perl
use v5.42;
use Cwd qw( abs_path );

foreach my $d (@ARGV){
    opendir my $dh, $d || die "Can't open $d : $!";
    while( readdir $dh ){
        my $absolute = abs_path($_);
        print "$absolute\n";
    }
}
