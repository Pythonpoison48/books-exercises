#!/usr/bin/env perl
use v5.42;

sub greet {
    state $name;
    if ($name) { print "Hello $_[0] ! $name is also here!\n" }
    else {
        print "Hello $_[0] you're the first one here\n";

    }
    $name = $_[0];
}
greet("Paul");
greet("Alexandre");
greet("Abdelkader");
