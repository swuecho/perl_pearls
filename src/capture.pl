use Capture::Tiny qw(capture);
use DDP;

my ( $out, $err, $exit ) = capture {
    system( "/bin/ls", ( "-l", "/tmp" ) );
};
p $out;
p $err;
p $exit;

