#!/usr/bin/env perl
use v5.42;
use File::Slurp qw(read_file);

print "\nFile: ";
chomp( my $filename = <STDIN> );
my @lines = read_file($filename);

while (1) {
    print "Pattern : ";
    chomp( my $pattern = <STDIN> );

    if ( $pattern =~ /[\s\n]^[\S]*/ ) {
        exit;
    }

    # Could have used grep instead probably would have been more efficient
    my @new_lines = map {
        if   ( $_ =~ /$pattern/ ) { $& }
        else                      { undef }
    } @lines;

    print "\n";
    foreach my $l (@new_lines) {

        if ($l) {
            print "$l\n";
        }

    }
}
