package Achilles::View::TT;

use strict;
use base 'Catalyst::View::TT';

__PACKAGE__->config(
    INCLUDE_PATH => [
              Achilles->path_to( 'root', 'site' ),
            ],
    TEMPLATE_EXTENSION => '.tt2',
    CATALYST_VAR => 'c',
    TIMER        => 0,
    # Not set by default
    WRAPPER            => 'wrapper',
);

=head1 NAME

Achilles::View::TT - TT View for Achilles

=head1 DESCRIPTION

TT View for Achilles. 

=head1 SEE ALSO

L<Achilles>

=head1 AUTHOR

Devin Austin,,,

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
