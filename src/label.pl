use v5.10;
LINE: while (<DATA>) {
    chomp;
  WORD: foreach my $word (split) {
        next uc($1) if $word =~ m/\Askip(.*)/;
        say $word;
    }
}

__DATA__
one two 
three four
five skipword six
seven eight
nine skipline forty Buster
ten eleven
