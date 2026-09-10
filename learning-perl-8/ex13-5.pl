#!/usr/bin/env perl
use v5.42;

if ( -d $ARGV[1] ) {
    rename $ARGV[0], "$ARGV[1]/$ARGV[0]";
}
else {
    rename $ARGV[0], $ARGV[1];
}
