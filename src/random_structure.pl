use Test::More;
use Data::Random::Structure;
use JSON::PP;
 
my $g = Data::Random::Structure->new(
      max_depth => 2,
      max_elements => 5,
);
 
my $ref = $g->generate();
 
diag explain $ref;
note explain $ref;
 
my $json = JSON::PP->new;
 
print $json->pretty->encode($ref);
 
ok(1);
 
done_testing();

# instead of this
# build a module with common data structure
