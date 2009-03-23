package Achilles::Schema::Blogs;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components(
  "InflateColumn::DateTime",
  "InflateColumn::FS",
  "Core",
);
__PACKAGE__->table("blogs");
__PACKAGE__->add_columns(
  "author",
  { data_type => "vharchar", default_value => undef, is_nullable => 0, size => 150 },
  "title",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
  "content",
  {
    data_type => "TEXT",
    default_value => undef,
    is_nullable => 0,
    size => 65535,
  },
  "created",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 0,
    size => 19,
  },
  "email",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
  "last_here",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 0,
    size => 19,
  },
  "name",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
  "password",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
  "profile_image",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
  "blogid",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
);
__PACKAGE__->set_primary_key("blogid");





1;
