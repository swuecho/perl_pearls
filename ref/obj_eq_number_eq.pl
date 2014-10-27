use Std;
use DDP;

=for comment
Using a string or number as a reference produces a symbolic reference, as explained above. Using a reference as a number produces an integer representing its storage location in memory. The only useful thing to be done with this is to compare two references numerically to see whether they refer to the same location.


if ($ref1 == $ref2) {  # cheap numeric compare of references
        print "refs 1 and 2 refer to the same thing\n";
    }

    Using a reference as a string produces both its referent's type, including any package blessing as described in perlobj, as well as the numeric address expressed in hex. The ref() operator returns just the type of thing the reference is pointing to, without the address. See "ref" in perlfunc for details and examples of its use.
=cut

my $obj1 = bless {}, 'Object1';
my $obj2 = bless {}, 'Object2';
p $obj2;
my $obj_str  =  "$obj2";
p $obj_str;


