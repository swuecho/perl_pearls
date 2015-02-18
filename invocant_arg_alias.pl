# http://blogs.perl.org/users/aristotle/2015/02/invocant-arg-aliasing.html

use 5.010;
{

    package F;
    sub new { bless {}, shift }
    sub me { $_[0] = 'surprise!' }
}
my $f = F->new;
say $f;
$f->me;
say $f;

__END__
output?
F=HASH(0x7f9af3006220)
surprise!
