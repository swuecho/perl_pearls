If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

source: https://projecteuler.net/problem=1

```perl
use v5.14;
use List::Util qw(sum);
my $max = (shift || 1000) - 1;
my @multiples = grep { not $_ % 5 && $_ % 3 } 1 .. $max;
say sum @multiples;
```

### Output
```result
233168
```

