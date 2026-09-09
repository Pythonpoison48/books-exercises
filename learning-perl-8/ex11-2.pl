#!/usr/bin/env perl
use v5.42;
use Time::Moment ();

my $years = $ARGV[0];
my $month = $ARGV[1];

my $date_arg = Time::Moment->new(
    year  => $years,
    month => $month,
    day   => 1
);

my $date_now = Time::Moment->now;

my $interval = $date_now;

$interval = $interval->minus_years( $date_arg->year );
$interval = $interval->minus_months( $date_arg->month );

print $interval->year . " " . $interval->month;
