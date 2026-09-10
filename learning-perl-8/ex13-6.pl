#!/usr/bin/env perl
use v5.42;

our $symbolic_flag = 0;
my @files = ();

foreach my $arg (@ARGV) {
    chomp($arg);
    if ( $arg eq "-s" ) {
        $symbolic_flag = 1;
        next;
    }
    push( @files, $arg );
}

if ( -d $files[0] && $symbolic_flag == 0 ) {
    print "Cant make a link to $ARGV[1] is a directory";
}
elsif ( $symbolic_flag == 1 ) {

    symlink $files[1], $files[0];
}
else {
    link $files[1], $files[0];
}
