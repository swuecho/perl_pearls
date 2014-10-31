use v5.21.5;
use experimental 'refaliasing';
my $a;
my $b = 1;
\$a = \$b;
$a = $a + 1;
say $a;
say $b;
