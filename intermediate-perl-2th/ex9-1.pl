#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

use v5.42;

my %patterns = (
  Gilligan   => qr/(?:Wiley )?Gilligan/,
  'Mary-Ann' => qr/Mary-Ann/,
  Ginger     => qr/Ginger/,
  Professor  => qr/(?:The )?Professor/,
  Skipper    => qr/Skipper/,
  'A Howell' => qr/Mrs?. Howell/,
);

print &rightmost(
  'There is Mrs. Howell, Ginger, and Gilligan',
  \%patterns
);

sub rightmost {
    my $string = $_[0];
    my $patterns = $_[1];

    my $rightmost = "";
    foreach my $p ( sort keys %$patterns) {
        ($string,$rightmost) = ($' // substr($string,length($p)) ,$p ) if ($string =~ %$patterns{$p});

    }

return $rightmost;
}
