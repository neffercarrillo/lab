#! /usr/bin/env perl

use strict;
use warnings;
use utf8;
use 5.010;


sub main {
	my @number_list = (1,2,3,4,5,35,45,67,100);
	my @number_list2 = (1..1000);
	#print &total(@number_list2);
	print &above_average(@number_list);
}

sub total {
	my @number_list = @_;
	my $result = 0;
	foreach (0..$#number_list){
		$result += $number_list[$_];	
	}
	$result
}

sub above_average {
	my @list_of_numbers = @_;
	my $total = &total(@list_of_numbers);
    my $avg = $total/($#list_of_numbers + 1);
	print $avg . "\n";
	foreach (0..$#list_of_numbers) {
		if ($list_of_numbers[$_] > $avg){
			print $list_of_numbers[$_] . "\n";
		}
	}
}


&main
