=pod
more info
https://metacpan.org/pod/distribution/perl/pod/perlref.pod
=cut
use v5.20;
use experimental 'postderef';
use DDP; # for p 

# 'a', 'b', 'c' .. 'z'
my $items = ['a'..'z'];

say "deref get a whole array";

say(join ':',   @$items);
say(join ',',  $items->@*);


say "get the largest index in a array";
say $items->$#*;
say $#$items;


say "get a value by index";
say  $$items[1];
say  $items->[1];


say "get multi value by indexes";
say(join ';', @$items[2,3]);
say(join ';', $items->@[2,3]);

say "get index and value";
my %hash_norm = %$items[2,3];
my %hash_postdef = $items->%[2,3];
p %hash_norm;
p %hash_postdef;


