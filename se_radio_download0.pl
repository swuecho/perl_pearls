#==
# download all the ogg files in the Linux Voice Podcast
# http://www.linuxvoice.com/category/podcasts/
# TODO: write more detailed explaination about it
#==
use echo;

use URI;
use LWP::Simple; # for get and getstore

# download from link, and save the file as the bashname in the url path 
sub download ($address) {
     my $uri = URI->new($address);
     my $file = path($uri->path)->basename;
     say "$file is downloading";
     getstore($address, $file);
     say "$file is downloaded";
}


my $rss_link = 'http://feeds.feedburner.com/se-radio';

# the content of the link is a rss file, but only the url is what I want, so 
# did not use RSS parser
for (split /^/, get($rss_link)) {
    #<enclosure url="http://www.linuxvoice.com/episodes/lv_s02e10.ogg" length="54868488"
    download($1) if /url=\"(\S*mp3)\"/; # extract the link of ogg file
}
