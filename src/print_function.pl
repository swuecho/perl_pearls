use warnings;
use strict;

sub fibonacci {
my ($number) = @_;
if ($number < 2) { # base case
return $number;
}
return fibonacci($number-1) + fibonacci($number-2);
}

print "f($_) = ${\ fibonacci($_) }\n" for 1,2,3;
# \ have a higher precedence same with ! ~ , unary +  -
print "f($_) = ${\ (fibonacci($_) + 3) }\n" for 1,2,3;
