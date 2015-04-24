use Time::Piece;
 
my $t = localtime;
use DDP;
p $t;
print "Time is $t\n";
print "Year is ", $t->year, "\n";
