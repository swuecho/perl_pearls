use v5.20;
use IO::Pipe;

my $pipe = IO::Pipe->new();
$pipe->reader(qw(ls -l));
while(<$pipe>) {
    print;
}
