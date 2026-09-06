#!/usr/bin/env perl
use v5.42;

my $width   = <STDIN>;
my @strings = <STDIN>;

shift(@strings);
my $longest = $strings[0];

foreach my $n (@strings) {
    if ( length($n) >= length($longest) ) {
        $longest = $n;

    }
}

my $alignement = $width;
my $ruler      = "123456789012345678901234567890123456789012345678901234567890";
while ( length($longest) > $alignement ) {
    $alignement += $width;

}

while ( $alignement >= length($ruler) ) {
    $ruler += "123456789012345678901234567890123456789012345678901234567890";
}

say $ruler;
foreach my $s (@strings) {
    print " " x $alignement, $s;

}
