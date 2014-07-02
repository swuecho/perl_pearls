use v5.20;
use experimental 'postderef';
my $aref = [ 'appid', 1, 'page', 2];
my %href = $aref->@*;
$href{dsid} = 2;
$aref = [%href];
p $aref;
__END__
my $x = ['a'..'z'];
my %x =  $x->%[1..5];
say %x;
