use strict;
use warnings;
use utf8;
use t::Util;
use Test::More;
use Furl::HTTP;

skip_if_offline();

my $url = 'http://www.yahoo.com/';

my $furl = Furl::HTTP->new();
for(1 .. 2) {
    note "getting";
    my ($code, $msg, $headers, $content) = $furl->get($url);
    note "done";
    is($code, 200);
}

done_testing;
