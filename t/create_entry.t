use strict;
use warnings;
use Test::More tests => 1;

use Achilles::Schema;
use DateTime;

my $schema = Achilles::Schema->connect("dbi:SQLite:achilles.sqlite");

my %entry = (

  author  => 'Devin',
  title   => 'test post',
  content => "I'M ON A BOAT MOTHER FUCKER!",
  created => DateTime->now,

);

ok( $schema->resultset('Blogs')->create(\%entry), "Entry created");
