#!/usr/bin/env perl
use v5.40;
use File::Spec;
use Cwd qw( getcwd abs_path );

# Could have used a glob instead of a dir handle
my $dirname = getcwd;

opendir( my $dirh, $dirname );

my @files = readdir($dirh);

for my $f (@files) {
    my $absf = abs_path($f);
    print "$absf \n";
}
