package Example {
use DDP;
  use Moose;

  sub foo {
      print "    foo\n";
  }

before 'foo' => sub { print "about to call foo\n"; };

after 'foo'  => sub {
  my ($self, $line_number) =@_;
  print "just called foo\n";
  print $line_number;
};

  around 'foo' => sub {
      my $orig = shift;
      my $self = shift;

      print "  I'm around foo\n";

      $self->$orig(@_);

      print "  I'm still around foo\n";
  };
} 


Example->new->foo(1);
