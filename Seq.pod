package Seq;

use Moo;

# DNA RNA or Protein

has seq => ( is => 'rw', );

around BUILDARGS => sub {
    my $orig  = shift;
    my $class = shift;
    if ( @_ == 1 && !ref $_[0] ) {
        return $class->$orig( seq => $_[0] );
    }
    else {
        return $class->$orig(@_);
    }
};

sub count {
    my $self   = shift;
    my $substr = shift;

    #Notes: use re ?
    # navie way.
    my $seq      = $self->seq;
    my $count    = 0;
    my $position = 0;
    while ( $position != -1 ) {
        $count++;
        $position = index $seq, $substr, $position + 1;
    }
    if ( ( index $seq, $substr ) == 0 ) { $count++ }
    $count - 1;
}

1;

__END__

=pod

=head1 NAME

Seq - the Seq class

=head1 SYNOPSIS

    $seq = Seq->new(seq => 'ATCGGTTC');
    or $seq = Seq->new('ATCGGTTC');
    $seq->seq;
    $seq->count('AT');

=head1 Attributes
    
seq

=head1 Methods

=head2 count

    $seq->count('AT')

the numbers of occurance of 'AT' in $seq;

=cut

