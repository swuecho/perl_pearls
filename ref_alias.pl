use v5.21.5;
use experimental 'refaliasing';
\my ($tom, $dick, @harry) = (\1, \2, [1..3]);
#(my $tom, \my $dick, \my @harry) = (\1, \2, [1..3]);
use DDP;
p $tom;
p $dick;
p $_ for @harry;
