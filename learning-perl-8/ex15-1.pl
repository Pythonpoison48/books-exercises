#!/usr/bin/env perl
use v5.42;

chdir '/';

my $dir_content = `ls -l`;

print $dir_content;
