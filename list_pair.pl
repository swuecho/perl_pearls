use List::Util 1.39 qw( pairs );
use v5.12;
my %hash = ( 1 .. 10 );
foreach (pairs %hash ) {
   say $_->key, " has value ", $_->value;
   say $_->[0], " has value ", $_->[1];
}
