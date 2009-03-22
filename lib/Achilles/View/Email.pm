package Achilles::View::Email;

use strict;
use base 'Catalyst::View::Email';

__PACKAGE__->config(
    stash_key => 'email'
);

=head1 NAME

Achilles::View::Email - Email View for Achilles

=head1 DESCRIPTION

View for sending email from Achilles. 

=head1 AUTHOR

Devin Austin,,,

=head1 SEE ALSO

L<Achilles>

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
