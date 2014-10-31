use v5.21.5;
use experimental 'refaliasing';
use Data::Dumper;

my @b = (1..5);
\my (@a) =\(@b);
# \my (@a) =(\@b); this is wrong
 

say @a;
say @b;
push @a, 6,
push @b, 7;
say Dumper(\@a);
say Dumper(\@b);
my $a = \@a;
my $b = \@b;
say $a;
say $b;
