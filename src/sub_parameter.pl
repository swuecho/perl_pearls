=pod
undef will be kept, but () will be ignored

=cut
sub test_arg {
    my $arg = \@_;
    return $arg
} 
use DDP;
my $res = test_arg(1,2,(),4);
p $res;

__END__
return path( $basedir, $self->get_appid, $self->get_name // () );

if ( $self->get_name ) {
    return path( $basedir, $self->get_appid, $self->get_name );
} else {

    return path( $basedir, $self->get_appid );
}

