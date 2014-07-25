use v5.20;
use DDP;

my $str  = "Buster and Mimi";

if ($str =~ /(?<first>\S+) and (?<second>\S+)/) {
    p %+;
    say $+{first};
    say $+{second};
}

$str  = "Buster and Buster";

if ($str =~ /(?<first>\S+) and \k<first>/) {
p %+;
    say $+{first};
    say $+{second};
}
