#!/usr/bin/env perl

sub mean {
    $c = 0;
    $n = 0;
    foreach (@_) {
        $c += $_;
        $n += 1;
    }

    $c / $n;
}

sub above_average {
    $mean   = &mean(@_);
    @return = {};
    foreach (@_) {
        if ( $_ >= $mean ) {
            push( @return, $_ );
        }
    }
    @return;
}

@list1 = ( 1 .. 1500 );
@list2 = ( 1 .. 900 );
@list3 = ( 1000 .. 1500 );
foreach $n ( &above_average( @list1, @list2, @list3 ) ) {
    print "$n\n";
}
