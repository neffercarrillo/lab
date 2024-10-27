#! /usr/bin/env perl

use strict;
use warnings;

my $test = 1;
my $decimal = 1.22;

print $test + $decimal . "\n";
print $test - $decimal . "\n";
print $test / $decimal . "\n";

my $string = "hello";
my $string2 = "hello2";
my $string3 = "hello2 $string\n";

print $string . $string2 . "\n";
print $string3 . "\n";

my $number = 1;

print $string . $number . "\n";
print $string + $number . "\n";
print "hello \$number" . "\n";

1;
