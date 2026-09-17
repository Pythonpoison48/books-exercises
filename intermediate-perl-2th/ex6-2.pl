#!/usr/bin/env perl
use v5.42;
use JSON;
use File::Slurp qw(read_file write_file);
my $file = "coconet.data";
my $backup_file = "data-file.json";

open my $fh, '<',$file;

my %transfers = ();

my $hash_ref;
eval {
    $hash_ref = decode_json( read_file($backup_file));
};

# could have used -e to test if file exist

if ($hash_ref) {
    %transfers = %{$hash_ref};
}

foreach my $line (<$fh>){
    if (index($line, '#') == 0){
        next;
    }
    my @elem= split(' ',$line);
    &update_transfer(@elem[0,1,2],\%transfers);
}

foreach my $k (sort keys %transfers){
    my @keys = &sort_hash(\%transfers,$k);

    print "$k\n";
    foreach my $k2 (@keys){
        print "    $k2  ",$transfers{$k}{$k2}, "\n";
    }
}


sub sort_hash {
    my $hashref = shift;
    my $key = shift;
     sort {$a cmp $b} keys %{${$hashref}{$key}};
}

sub update_transfer {
    my ($source,$dest,$amount,$hash_ref) = @_[0,1,2,3];

    ${$hash_ref}{$source}{$dest} += $amount;
}

my $encoded_json = to_json(\%transfers, { pretty => 1});
write_file($backup_file,$encoded_json);
