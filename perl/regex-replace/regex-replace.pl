#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

my %filters = (
    "Greeting" => \&redact_greeting,
    "SS" => \&redact_ss,
    );

sub redact_greeting {
    my ($line) = @_;
    if ($line =~ /HELLO/) {
        return "REDACTED - GREETING RULE"
    } else {
        return "";
    }
}

sub redact_ss {
    my ($line) = @_;
    if ($line =~ /(\d+?)( |-)(\d+?)( |-)(\d+?)/) {
        return "REDACTED - SS RULE"
    } else {
        return "";
    }
}

while (<>) {
    my $line = $_;
    chomp $line;
    my $match_counter = 0;
    foreach my $filter (values %filters) {
        my $filtered_line = $filter->($line);
        unless ($filtered_line eq "") {
            say $filtered_line;
            $match_counter++;
        }
    }
    if ($match_counter == 0) {
        say $line;
    }
}
