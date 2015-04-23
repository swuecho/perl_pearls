use v5.20;

# use IO::Handle
# with 5.14 and above, IO::Handle is explicitly loaded
open my $fh, '>', 'io_handle.txt';

$fh->print("test file hanldle");

$fh->close;


my $fh_file = IO::File->new("io_handle.txt", "r");

# TODO: learn
# r,w,a
#
# r+, w+, a+
if (defined $fh_file) {
say "great";
        print <$fh_file>;
        undef $fh_file;       # automatically closes the file
}

