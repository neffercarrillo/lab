#! /usr/bin/env perl

use strict;
use warnings;
use utf8;
use autodie;
use 5.010;
use Getopt::Long;
use Log::Message::Simple qw(msg error debug);


#globals
my $VERBOSE = 0;
my $DEBUG = 0;
my $NAME = "ex01.pl";


# handle command line
GetOptions(
	"verbose" => \$VERBOSE,
	"debug" => \$DEBUG,
	) or die "option not recognized\n";


sub main {
	msg("$NAME: entered main.", $VERBOSE);
	while(<>){
		chomp;
		if (/fred/) {
			say $_;
		}
	}
}


# run script
main
