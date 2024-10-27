#! /usr/bin/env perl

use strict;
use warnings;
use utf8;
use 5.010;


my @names = qw(fred betty barney dino wilma pebbles bamm-bamm);

chomp(my @lines = <STDIN>);
foreach my $line (@lines){
	say $names[$line];
}


