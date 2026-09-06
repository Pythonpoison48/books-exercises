#!/usr/bin/env perl
use v5.42;

sub greet {
    state @names;
    if ( !@names ) {
        print "Hello $_[0] you're the first one here \n";
    }
    else {
        print "Hello $_[0]! I've seen: @names \n";
    }
    push( @names, $_[0] );

}

greet("Paul");
greet("Alexandre");
greet("Abdelkader");
