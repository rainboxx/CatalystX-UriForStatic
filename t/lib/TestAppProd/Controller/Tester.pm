package TestAppProd::Controller::Tester;
our $VERSION = '0.01';

use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

sub get_static_uri : Local {
    my ($self, $c) = @_;
    $c->response->body($c->uri_for_static('/static/foo.png'));
}

sub get_static_uri_as_string : Local {
    my ($self, $c) = @_;
    $c->response->body($c->uri_for_static('/static/foo.png')->as_string);
}

1;