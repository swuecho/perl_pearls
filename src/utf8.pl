use Encode;
my $name = "武浩";
print $name;

# print out byte string
print
join ':', map { sprintf '%02x', ord($_) } split //,  encode('utf8', $name);

