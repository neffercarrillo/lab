#!/usr/bin/perl

use strict;
use warnings;

use Data::Dumper;

my %map = (
    a => 20,
    b => "hello",
    c => 11.22,
   "1_%" => "new",
    );

my %map2 = (
    hello => 1,
    %map,
    c => "new",
	d => undef,
    );

my @array = keys %map2;
my $size = keys %map2;

my $exists = $map2{d} ? 'yes' : 'no';

delete $map2{c};

print Dumper(%map2);

1; 

