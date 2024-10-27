#!/usr/bin/perl

use strict;
use warnings;

use Data::Dumper;

my %hash = {a => 1, b => 2};
my @array = qw/ string1 string2/;
my $scalar = 32;

print \@array;

my $ref1 = \@array;
my $ref2 = \@array;

push $ref1->@*, "new";
push $ref2->@*, "new";

print Dumper(@array);
