# special case of string ref
# As a special case, \(@foo) returns a list of references to the contents of @foo, not a reference to @foo itself. Likewise for %foo, except that the key references are to copies (since the keys are just strings rather than full-fledged scalars).


use DDP;


my @foo = (1,2,3);
my %foo = ('a' => 1, 'b' => 2); # be aware of the order of keys is random

# you probably never need this 4 methods
my $foo_aref = \(@foo);
my $foo_href = \(%foo);

my @list_foo_aref = \(@foo);
my @list_foo_href = \(%foo);

p $list_foo_aref[0];
p $list_foo_href[0];

