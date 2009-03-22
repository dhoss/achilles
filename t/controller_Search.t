use strict;
use warnings;
use Test::More tests => 3;

BEGIN { use_ok 'Catalyst::Test', 'Achilles' }
BEGIN { use_ok 'Achilles::Controller::Search' }

ok( request('/search')->is_success, 'Request should succeed' );


