use strict;
use warnings;
use Test::More tests => 3;

BEGIN { use_ok 'Catalyst::Test', 'Achilles' }
BEGIN { use_ok 'Achilles::Controller::Logout' }

ok( request('/logout')->is_success, 'Request should succeed' );


