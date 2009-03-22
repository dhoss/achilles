package Achilles::View::Mason;

use strict;
use warnings;
use base 'Catalyst::View::Mason';

__PACKAGE__->config(

    use_match => 0,
    template_extension => '.mhtml',
    comp_root => Achilles->path_to('root', 'site')

);

=head1 NAME

Achilles::View::Mason - Mason View Component

=head1 SYNOPSIS

    Very simple to use

=head1 DESCRIPTION

Very nice component.

=head1 AUTHOR

Devin Austin

dhoss@cpan.org

http://www.codedright.net

=head1 LICENSE

This library is free software . You can redistribute it and/or modify it under
the same terms as perl itself.

=cut

1;
