#! /usr/bin/env perl

use strict;
use warnings;
use utf8;
use 5.010;

state %frequency;

while(<>){
	chomp;
	$frequency{$_} += 1;
}

foreach (sort keys %frequency){
	print $_ . ":" . $frequency{$_} . "\n";
}
