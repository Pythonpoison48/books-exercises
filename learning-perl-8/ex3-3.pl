#!/usr/bin/env perl

@strings = <STDIN>;

# on different lines
print sort(@strings);

# on the same lines
@sorted = sort(@strings);
foreach $s (@sorted) {
    chomp($s);
    print $s;
}
