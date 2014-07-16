sub test_arg {
    my $arg = \@_;
    return $arg
} 
use DDP;
my $res = test_arg(1,2,(),4);
p $res;
