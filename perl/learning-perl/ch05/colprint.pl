#! /usr/bin/env perl

use strict;
use warnings;
use utf8;
use 5.010;
use autodie;


# initialize buffer array
my @buffer;

# get input from stdin and store in array
while(<>){
	chomp;
	push @buffer,$_;
}

# print ruler line
my $ruler_line = "1234567890" x ($buffer[0]/10 + 1);
say $ruler_line;

# print results
my $format = "%$buffer[0]s\n";
printf $format,$buffer[1];
printf $format,$buffer[2];


