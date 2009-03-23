#!/usr/bin/perl -w
use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";
use Achilles::Schema;
my $schema = Achilles::Schema->connect($ARGV[0]);
$schema->deploy({ add_drop_tables => 1});
