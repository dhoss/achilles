package Achilles::Model::DB;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'Achilles::Schema',
    connect_info => [
        'dbi:SQLite:achilles.sqlite',
        
    ],
);

=head1 NAME

Achilles::Model::DB - Catalyst DBIC Schema Model
=head1 SYNOPSIS

See L<Achilles>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<Achilles::Schema>

=head1 AUTHOR

Devin Austin,,,

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
