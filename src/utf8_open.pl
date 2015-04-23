# reading a file with encoding utf8
# more info http://modernperlbooks.com/books/modern_perl_2014/09-managing-perl-programs.html#SW5wdXRhbmRPdXRwdXQ
use v5.20;
my $infile = './utf8_text.txt';

open my $in_fh,  '<:encoding(UTF-8)', $infile or die "can not open";

#open my $in_fh,  '<', $infile  or die "can not open";

while (<$in_fh>) {
    say;
}
