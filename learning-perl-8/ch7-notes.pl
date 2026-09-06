#!/usr/bin/env perl
use v5.42;

sub regex_fred {
    while (<STDIN>) {
        chomp;
        if (/fred/) {
            print "\tMatches\n";
        }
        else {
            print "\t Doesn't match \n";

        }

    }
}

sub regex_argv0 {
    while (<STDIN>) {
        chomp;
        if (/$ARGV[0]/) {
            print "\tMatches\n";
        }
        else {
            print "\t Doesn't match \n";

        }

    }
}

&regex_argv0
