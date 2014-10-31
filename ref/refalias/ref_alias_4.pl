use v5.21.5;
use experimental 'refaliasing';
use Data::Dumper;

my @b = (1..5);
#\my @a =\@b;
\(my @a) =\(@b);
# the above lines is very different
 
my $a = \@a;
my $b = \@b;
push @a , 3;
say Dumper($a);
say Dumper($b);
say $a;
say $b;
say \$a[0];
say \$b[0];
