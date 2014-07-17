use DBM::Deep;
my $db = DBM::Deep->new( "foo.db" );
 
$db->{key} = 'value';
print $db->{key};
 
$db->put('key' => 'value');
print $db->get('key');
 
