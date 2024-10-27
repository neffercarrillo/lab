#! /usr/bin/env perl

use strict;
use warnings;
use utf8;
use 5.010;
use autodie;

my @lines = ();
while(<>){
	push @lines,$_;
}
@lines = reverse @lines;
print @lines;
