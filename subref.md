# sub reference and dereference

```perl
use v5.16;
    
my $subref = sub { "this is a sub ref"};
# two ways to deref
say &$subref;
say $subref->()
```

```result
this is a sub ref
this is a sub ref
```
