#!/usr/bin/env perl
use v5.40;
use Module::CoreList;

sub printinfo {
    my $modname = $_[0];
    if ( !Module::CoreList->is_core($modname) ) {
        return;
    }

    print "Name : '$modname'\n";
    print "First Release : '"
      . Module::CoreList->first_release($modname) . "'\n";

}

map { &printinfo($_) } Module::CoreList->find_modules(qr/[\s\S]*/);
