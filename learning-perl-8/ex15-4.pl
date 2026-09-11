#!/usr/bin/env perl
use v5.42;

my $sig_out = `kill -l`;

my @sigs = $sig_out =~ /([-A-Z0-9]*)\s/g;

foreach my $s (@sigs) {
    print "$s\n";
}

my %SIGTAB = ();

sub my_int_handler {
    my $signame = shift;
    if ( $signame eq "INT" ) {
        &print_sigtab;
        exit;
    }
    print "$signame\n";
    $SIGTAB{$signame} += 1;
}

foreach my $s (@sigs) {
    $SIG{"$s"} = \&my_int_handler;
}

sub print_sigtab {
    print "\n";
    foreach my $k ( sort keys %SIGTAB ) {

        print "$k => $SIGTAB{$k}\n";
    }
}

while (1) {

}
