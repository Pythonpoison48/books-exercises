#!/usr/bin/env perl
use v5.42;
use Data::Dumper;
my $file = "coconet.data";

open my $fh, '<',$file;


my %transfers = ();


foreach my $line (<$fh>){
    if (index($line, '#') == 0){
        next;
    }
    my @elem = split(' ',$line);
    &update_transfer(@elem[0,1,2],\%transfers);

}

foreach my $k (sort keys %transfers){
    my @keys = &sort_hash(\%transfers,$k);


    foreach my $k2 (@keys){
        print "$k => $k2: ",$transfers{$k}{$k2}, "\n";
    }
}

sub sort_hash {
    my $hashref = shift;
    my $key = shift;
     sort {${$hashref}{$key}{$b} <=> ${$hashref}{$key}{$a}} keys %{${$hashref}{$key}};
}



sub update_transfer {
    my ($source,$dest,$amount,$hash_ref) = @_[0,1,2,3];

    ${$hash_ref}{$source}{$dest} += $amount;
}
