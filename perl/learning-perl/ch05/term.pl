#! /usr/bin/env perl

use strict;
use warnings;
use utf8;
use autodie;


my $VERBOSE = 1;


sub main {
	debug("entered main...");
	&terminal;
	   
}

sub debug {
	my $msg = shift @_;
	if($VERBOSE){
		print $msg . "\n";
	}	
}

sub terminal {
	my $ps1 = "terminal";
	print $ps1;
	while(defined(my $line = <STDIN>)){
		print "$ps1: $line";
	}	
}

# run script
&main
