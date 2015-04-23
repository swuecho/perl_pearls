use v5.20;
# what is the output of this file?
use Data::Dumper;

my @b = (1..5);
my @a = (1..5);
push @a, 6,
push @b, 7;
say Dumper(\@a);
say Dumper(\@b);
