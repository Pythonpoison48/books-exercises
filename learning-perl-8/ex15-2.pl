#!/usr/bin/env perl
use v5.42;

chdir '/home/paul';
my $dir_content = `ls -l 2> ls.err 1> ls.out`;

