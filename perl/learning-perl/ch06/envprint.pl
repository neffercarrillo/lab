#! /usr/bin/env perl

use strict;
use warnings;
use utf8;
use 5.010;


foreach (sort keys %ENV){
	chomp;
	print $_;
}
