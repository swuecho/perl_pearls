use DB_File;
use Memoize;

sub fetch {
  my ( $c, $url ) = @_;
  $c->ua->get($url)->res->body;
}

sub normalize_url { shift; shift->to_string }

tie my %cache => 'DB_File', 'cache', O_RDWR | O_CREAT, 0666;
memoize(
  'fetch',
  NORMALIZER   => 'normalize_url',
  SCALAR_CACHE => [ HASH => \%cache ],
  LIST_CACHE   => 'FAULT'
);

# copied from
# http://perladvent.org/2016/2016-12-13.html 
