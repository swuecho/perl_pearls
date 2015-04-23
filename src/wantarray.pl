#!/usr/bin/perl -w
use strict;
use Data::Dumper;
my %hash   = try_it();
my $scalar = try_it();
print Dumper \%hash;
print "\n$scalar\n";

sub try_it {
    return (a=>1,b=>2) if wantarray;
    return "foo";
}
