use v5.12;
package Greet {
use MooseX::Role::Parameterized;

parameter greeting => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

role {
    my $p = shift;
    my %args = @_;
    my $arg = \%args;
    my $greeting = $p->greeting;
    use DDP;
    p $arg;

    method greet => sub {
        print "$greeting!\n";
    };
};

sub shared_method {
   say "shared method"; 
}


}
package EnglishMan;
use Moose;
with Greet => { greeting => "Hello" };

package Slovak;
use Moose;
with Greet => { greeting => "Ahoj" };

package Lolcat;
use Moose;
with Greet => { greeting => "OH HAI" };

EnglishMan->new->greet; # Hello!
Slovak->new->greet; # Ahoj!
Lolcat->new->greet; # OH HAI!

EnglishMan->new->shared_method; # Hello!
Slovak->new->shared_method; # Ahoj!
Lolcat->new->shared_method; # OH HAI!
