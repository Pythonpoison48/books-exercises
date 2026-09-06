#!/usr/bin/env perl
use v5.42;

my @reversed = reverse(@ARGV);

foreach my $r (@reversed) {
    open my $tmp_file, "<:encoding(UTF8)", $r;

    print reverse(<$tmp_file>);

    close $tmp_file;
}
