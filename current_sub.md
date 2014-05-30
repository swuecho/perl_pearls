# current sub

```perl
use v5.16;
my $sub = sub {
    state $n = 5;
    return unless $n > -1;
    say $n--;
    __SUB__->();

};
$sub->();
```
## result

5
4
3
2
1
0
