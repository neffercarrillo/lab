#! /usr/bin/env perl

use strict;
use warnings;
use utf8;
use 5.010;


sub main {
	&greet2("Debbie");
	&greet2("Moncha");
	&greet2("Omar");
}

sub greet {
	state $name;
	my $caller_name = shift @_;
	if ($name eq undef){
		print "Hello, $caller_name. You are the first one here!\n";
		$name = $caller_name;
	} else {
		print "Hello, $caller_name. $name is also here!\n";
	}
}

sub greet2 {
	state $name;
	state $greeted;
	my $caller_name = shift @_;
	if ($name eq undef){
		print "Hello, $caller_name. You are the first one here!\n";
		$name = $caller_name;
		$greeted .= " " . $caller_name;
	} else {
		print "Hello, $caller_name. I've seen: $greeted\n";
		$greeted .= " " . $caller_name;
	}
}


&main
