#!/usr/bin/env perl
use utf8;

$radius = <STDIN>;
if ( $radius <= 0 ) { print 0; }
else {
    print $radius * 3.1415 * 2;
}
