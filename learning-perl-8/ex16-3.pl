#!/usr/bin/env perl
use v5.42;
my $dirname = ".";
use POSIX qw(strftime);

opendir my ($dh), $dirname or die "Couldn't open dir '$dirname': $!";
my @files = readdir $dh;

my %times;
my $longest = 20;

sub get_time {
    my $file = $_[0];
    my ( $atime, $mtime ) = ( stat($file) )[ 8, 9 ];
    my $date1 = strftime "%Y-%m-%d %H:%M:%S", localtime($atime);
    my $date2 = strftime "%Y-%m-%d %H:%M:%S", localtime($mtime);
    ( $date1, $date2 );
}

map {
    @times{$_} =
      { atime => ( &get_time($_) )[0], mtime => ( &get_time($_) )[1] }
} @files;

foreach my $k ( sort keys %times ) {
    if ( $k eq "." || $k eq ".." ) {
        next;
    }
    print "$k"
      . " " x ( $longest - length($k) + 1 )
      . $times{$k}{atime}
      . "              "
      . $times{$k}{mtime} . " \n";
}
