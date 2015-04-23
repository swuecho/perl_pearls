# # loop var is aliased
#
#     for VAR (LIST) {
#
#      ...
#
#      }
#
# if *LIST* consists entirely of assignable values( meaning variables,
# generally, not enumerated constants), you can modify each of those
# vairables by modifying *VAR* inside the loop. That's because the foreach 
# loop index variable is an implicit alias for each item in the list you're
# looping over. 
# -- programming perl, 118-119


# ### double each number in a list  
use v5.20;

my @items = ( 1, 2, 2, 4 );

for my $item (@items) {
    $item = $item x 2;
}

is_deeply( \@items, [ 2, 4, 4, 8 ] );
