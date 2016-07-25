package Sockets;
use Mojo::Base 'Mojolicious';
use Mojo::EventEmitter;
use utf8;

sub startup {
	my $self = shift;

	my $r = $self->routes;
	$self->helper(events => sub { state $events = Mojo::EventEmitter->new });
	
	$r->get('/')          ->to('socks#button');
	$r->get('/square')    ->to('socks#square');
	$r->websocket('/echo')->to('socks#echo');
}

1;