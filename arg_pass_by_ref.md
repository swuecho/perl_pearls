Perl pass by ref                                                         
================
Hao Wu
November 25, 2016

perl sub argument pass by ref
=============================

``` perl
use v5.10;
my $a = 1;                                                               
sub plus_one {
    $_[0]+=1
}

say(plus_one( $a));
say($a);
```

    ## 2
    ## 2
