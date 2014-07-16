use v5.20;
use IO::Dir;

my $dir_fh = IO::Dir->new('.') or die "can not open dir handle";

while (defined (my $file = $dir_fh->read)) {
    print "$file\n";
}
