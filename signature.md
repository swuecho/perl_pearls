# perl signature

```perl
use v5.20.0;
use experimental 'signatures';

sub add($x, $y) {
	$x + $y;
}

say add(1,2); 
```

# result 

```result
3
```
