package A {
use Moose;

has 'attr' => (is => 'ro', default => 'defined');

}
use DDP;
my $a = A->new();
p $a;

my $b = A->new(attr => undef);
p $b;

