#! /usr/bin/env perl

use strict;
use warnings;
use utf8;
use 5.010;

my %family_names = (
	'fred' => 'flintstone',
	'barney' => 'rubble',
	'wilma' => 'flintstone'
	);

print "What's your given name?: ";
while(<>){
	chomp(my $name = $_);
	print "Your family name is: $family_names{$name}\n";
	exit;
}




