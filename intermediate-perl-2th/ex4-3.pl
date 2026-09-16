#!/usr/bin/env perl
use strict;
use warnings;

my %gilligan_info = (
	name     => 'Gilligan',
	hat      => 'White',
	shirt    => 'Red',
	position => 'First Mate',

);
my %skipper_info = (
	name     => 'Skipper',
	hat      => 'Black',
	shirt    => 'Blue',
	position => 'Captain',

);

my %mr_howell = (
  name     => 'Mr. Howell',
  hat      => undef,
  shirt    => 'White',
  position => 'Passenger',
);
my @crew = (\%gilligan_info, \%skipper_info , \%mr_howell);

my $format = "%-15s %-7s %-7s %-15s\n";
printf $format, qw(Name Shirt Hat Position );

foreach my $crewmember (@crew) {
	printf $format,
		$crewmember->{'name'},
		$crewmember->{'shirt'},
		$crewmember->{'hat'},
		$crewmember->{'position'}
    ;
}

foreach my $cm (@crew) {
    if ($cm->{'name'} =~ /Howell/){
        $cm->{location} = 'The Island Country Club.';
    }else {
        $cm->{location} = 'The Island.'
    }
    print "$cm->{'name'} is at $cm->{'location'}\n";
}
