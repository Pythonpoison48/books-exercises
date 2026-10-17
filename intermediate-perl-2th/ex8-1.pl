#!/usr/bin/env perl
use v5.42;

# TO BE REDONE


print "Where do you went to send date ? (file,scalar,both) ?\n";
print "[0]/1/2: \n";
chomp(my $out = <STDIN>);
my $date = `date`;

if ($out == 0){
    chomp(my $name = <STDIN>);
    open ( my $fh ,'>', $name );
    print {$fh} $date ;
}elsif ($out == 1) {
    my $scalar;
    print {$scalar} $date;
    print "$scalar";

}else {
    chomp(my $name = <STDIN>);
    open ( my $fh ,'>', $name );

    print {$fh,$scalar} $date;
}
