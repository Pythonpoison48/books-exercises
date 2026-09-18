#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

use File::Find;
use Time::Local;




my $target_dow = 4;        # Sunday is 0, Monday is 1, ...
my @starting_directories = (".");

my $seconds_per_day = 24 * 60 * 60;
my($sec, $min, $hour, $day, $mon, $yr, $dow) = localtime;
my $start = timelocal(0, 0, 0, $day, $mon, $yr);        # midnight today

while ($dow != $target_dow) {
  # Back up one day
  $start -= $seconds_per_day;        # hope no DST! :-)
  if (--$dow < 0) {
    $dow += 7;
  }
}
my $stop = $start + $seconds_per_day;

my($gather, $yield)  = &gather_mtime_between($start, $stop);
find($gather, @starting_directories);
my @files = $yield->(  );

for my $file (@files) {
  my $mtime = (stat $file)[9];        # mtime via slice
  my $when = localtime $mtime;
  print "$when: $file\n";
}


sub gather_mtime_between {
    my $start = $_[0];
    my $end = $_[1];

    my $date_start = localtime($start);
    my $date_end = localtime($end);

    my $gather = sub {
        if ((stat($File::Find::name))[9] >= $start && (stat($File::Find::name))[9] <= $end){

            print "$File::Find::name was modified between $date_start and $date_end\n ";
        }
    };

    my $yield = sub {
        my @files = ();

        foreach my $d (@starting_directories){
            my @tmp = glob("$d/* $d/*.");
            push(@files, @tmp);
        }

        my @good_files = grep {
            (stat($_))[9] >= $start && (stat($_))[9] <= $end
        } @files;

        return @good_files
    };
    $gather,$yield;

}
