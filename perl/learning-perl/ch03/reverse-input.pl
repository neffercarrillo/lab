#! /usr/bin/env perl

use strict;
use warnings;
use utf8;
use 5.010;


chomp(my @lines = <STDIN>);
@lines = reverse @lines;
print @lines;
