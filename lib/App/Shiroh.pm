package App::Shiroh;
use strict;
use warnings;
our $VERSION = '0.01';

use Net::Twitter::Lite;

sub new {
    my ($class, %opts) = @_;
    my $message_to = delete $opts{message_to};
    my $self = bless {opts => {%opts}, message_to => $message_to}, $class;
    $self->init_client;
    $self;
}

sub init_client {
    my $self = shift;
    $self->{client} = Net::Twitter::Lite->new( %{$self->{opts}} );
}

sub send {
    my ($self, $mes) = @_;
    my $client = $self->{client};
    $mes = "d ". $self->{message_to}. " ". $mes;
    $client->update($mes);
}

1;
__END__

=encoding utf8

=head1 NAME

App::Shiroh - CLI posting tool for twitter

=head1 SYNOPSIS

In your shell, 

  $ shiroh '俺がメッセージだ'

or

  $ echo '俺こそ真のメッセージだ' | shiroh

=head1 DESCRIPTION

App::Shiroh is a CLI posting tool for twitter

=head1 CONFIG

config-file is ~/.shiroh

This is an example.

  {
     consumar_key        => 'YOUR CONSUMER KEY',
     consumer_secret     => 'YOUR CONSUMER SECRET',
     access_token        => 'YOUR ACCESS TOKEN',
     access_token_secret => 'YOUR ACCESS TOKEN SECRET',
     message_to          => 'some_nickname', ### optional. If defined, send messsage as direct-message to specified account.
  };

=head1 AUTHOR

ytnobody E<lt>ytnobody@gmail.comE<gt>

=head1 SEE ALSO

Net::Twitter::Lite

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
