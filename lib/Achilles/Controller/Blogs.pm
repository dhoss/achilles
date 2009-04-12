package Achilles::Controller::Blogs;

use strict;
use warnings;
use parent 'Catalyst::Controller::HTML::FormFu';
use DateTime;
=head1 NAME

Achilles::Controller::Blogs - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->res->redirect( $c->controller('Blogs')->action_for('list') );
}

=head2 setup_crud_base
=cut

sub setup_crud_base :Chained('/') PathPart('blog') CaptureArgs(3) {
    my ($self, $c, $year, $month, $day) = @_;
    
  #  $c->stash->{year} = $year 
 #     unless $c->model('Blogs')->search( { year => $year })->count < 1;
}

=head2 create

=cut

sub create : Path('new') FormConfig('blogs/create.yml'){
    my ($self, $c) = @_;    
    
    my $form = $c->stash->{form};
    
    if ( $form->submitted_and_valid ) {
    
        my $entry = $c->model('DB::Blogs')->new_result({ created => DateTime->now });
        $form->model->update($entry);
        $c->stash( 
            status_msg => "Post saved",
            entry      => $entry
         );
    
    } else {
    
        $c->stash( error_msg => "Your form had errors" );
        $c->detach;
    
    }

}

=head2 list
=cut

#sub

=head1 AUTHOR

Devin Austin

dhoss@cpan.org

L<http://www.codedright.net>

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
