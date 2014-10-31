use v5.20;

my @b = (1..5);
my $a = \@b;
my $d = \(@b);
use DDP;
p $a;
p $d;
