#!/usr/bin/env perl
use v5.42;

my $number     = int( 1 + rand 100 );
my $debug_mode = $ARGV[0] // 0;

while (<STDIN>) {
    chomp;
    if ( $_ == $number ) {
        print "GGWP\n";
        exit;
    }
    if ( $_ eq "quit" || $_ eq "exit" || $_ eq "" ) {
        exit;
    }
    else {
        if ( $_ > $number ) {
            if   ($debug_mode) { print "Too high: $number\n" }
            else               { print "Too high\n"; }

        }
        else {
            if   ($debug_mode) { print "Too Low: $number\n" }
            else               { print "Too Low\n"; }

        }
    }
}
