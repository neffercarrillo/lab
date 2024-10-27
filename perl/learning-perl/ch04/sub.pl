#! /usr/bin/env perl

use strict;
use warnings;
use utf8;
use 5.010;


sub subr {
	my($name) = @_;
	if ($name == ""){
		print "Hmm... No name? Unknown it is!\n";
		$name = "Unknown";
	}
	
	my $str =  "Hello, $name.\nThis is a subroutine.\n";
}

print "By what name shall you be known, sire?: ";
chomp(my $input = <STDIN>);
print &subr;
