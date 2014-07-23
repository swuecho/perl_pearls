use v5.20;
use DDP;

=pod
nothing in perl
=cut

my %hash;

if (!%hash) {
    say "Empty";
}


sub return_nothing {}

my $a = return_nothing;
p $a;


