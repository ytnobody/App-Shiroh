# NAME

App::Shiroh - CLI posting tool for twitter

# SYNOPSIS

In your shell, 

    $ shiroh '俺がメッセージだ'

or

    $ echo '俺こそ真のメッセージだ' | shiroh

# DESCRIPTION

App::Shiroh is a CLI posting tool for twitter

# CONFIG

config-file is ~/.shiroh

This is an example.

    {
       consumar_key        => 'YOUR CONSUMER KEY',
       consumer_secret     => 'YOUR CONSUMER SECRET',
       access_token        => 'YOUR ACCESS TOKEN',
       access_token_secret => 'YOUR ACCESS TOKEN SECRET',
       message_to          => 'some_nickname', ### optional. If defined, send messsage as direct-message to specified account.
    };

# AUTHOR

ytnobody <ytnobody@gmail.com>

# SEE ALSO

Net::Twitter::Lite

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
