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

=head2 blog

set up blog crap here

=cut

sub blog : Chained('/') PathPart('blog') CaptureArgs(0) {

} 

sub load_blog : Chained('blog') PathPart('') CaptureArgs(1) { 
    my ($self, $c, $id) = @_;
    
    my $blog = $c->model('DB::Blog')->find($id);
    
    if ( $blog ) {
        $c->stash(blog => $blog ); 
    } else {
        $c->stash( error_msg => "No such blog" );
        $c->detach;
    }
    
} 

sub view : Chained('load_blog') PathPart('view') Args(0) {
    my ($self, $c) = @_;
    
    

} 

sub create : Chained('blog') PathPart('new') Args(0) FormConfig('blogs/create.yml') {
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
