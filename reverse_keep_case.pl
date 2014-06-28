=pod 

In any programming language, create an input that accepts "My name is 
Albert McDonald." and outputs the reversed value "Ym eman si Trebla 
DlAnodcm."

=cut
use v5.20;
use experimental 'signatures';

sub is_upper { shift =~/[A-Z]/ }


sub stable_reverse($in_word) {
    my @letters =  (split '', $in_word); 
    my ($rev_char, $out_word);
    for (0 .. $#letters) {
        $rev_char = $letters[$#letters - $_];
        $out_word .= (is_upper($letters[$_]) ? uc $rev_char : lc $rev_char);
    }
    return $out_word;
}

my $str = "My name is Albert McDonald.";

my $reversed = $str =~ s/(\w+)/stable_reverse($1)/gre;
say $reversed;
