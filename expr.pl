
    use v5.20;
    use experimental 'postderef';

my $items = ['a'..'z']; # 'a', 'b', 'c' .. 'z'

say "deref get a whole array";
say(join '; ',   @$items); # a; b; c; d; ... x; y; z
say(join '; ',  $items->@*); # same

say "get a value by index";
say  $$items[1]; # 'b'
say  $items->[1]; # 'b'

say "get multi value by indexes";
say(join ';', @$items[2,3]); # 'b; c'
say(join ';', $items->@[2,3]); # 'b; c'

say "get the largest index in a array"; 

say $items->$#*; # 25
say $#$items; # 25


say "get index and value";
use DDP;
my %hash_norm = %$items[2,3]; # this is postfix slicing. 
my %hash_postdef = $items->%[2,3]; # same here
p %hash_norm; # { 2 => 'c' , 3 => 'd' }
p %hash_postdef; # { 2 => 'c' , 3 => 'd' }
