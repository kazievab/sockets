package Sockets::Controller::Socks;
use base 'Mojolicious::Controller';
use Mojo::EventEmitter;
use utf8;

sub button { }

sub square { }

sub echo {
	my $self = shift;
	$self->inactivity_timeout(3600);

	$self->on(message => sub { 
    	my @set = ('0' ..'9', 'A' .. 'F');
    	my $str = (join '', map $set[rand @set], 1 .. 6);

    	$str = "#" . $str;

    	$self->events->emit(color => "$str");
  	});

  	my $cb = $self->events->on(color => sub { $self->send(pop) });
}

1;