#! /usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

my @test = (
    22,
    "hello",
    1.22
    );

print Dumper(@test);

my @test2 = qw/one two three four/;

# print all values in array
print Dumper(@test2);

# print one item of the array
print Dumper($test2[1]);

# override items in the array
$test2[3] = "override";
print Dumper(@test2);

# override value in array
$test2[10] = "override";
print Dumper(@test2);

# print item at the end of the list
print Dumper($test2[-1]);

# determine size of an array
my $size = @test2;
print Dumper($size);

# print out last index of array
my $last_index = $#test2;
print Dumper($last_index);

# populate arrays quickly
my @test3 = (11..30);
print Dumper(@test3);

# populate arrays quickly
my @test3 = ("a".."z");
print Dumper(@test3);

# populate specific items in array by index position
print Dumper(@test3[2..3]);

# push
push @test3, 20;
print Dumper(@test3);

# pop
pop @test3;
print Dumper(@test3);

# shift
shift @test3;
print Dumper(@test3);

# unshift
unshift @test3, 21;
print Dumper(@test3);    

# sort strings
my @test4 = qw/h o p m l a b c/;
@test4 = sort @test4;
print Dumper(@test4);

# sort numbers
my @test4 = (4, 2, 10, 22, 30);
@test4 = sort {$a <=> $b} @test4;
print Dumper(@test4);

@test4 = sort {$b <=> $a} @test4;
print Dumper(@test4);


1; 
