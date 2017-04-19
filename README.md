# NAME

MooX::Options::Actions - Instant one class CLI App

# SYNOPSIS

In MyApp::Script:

    package MyApp::Script;

    use MooX::Options::Actions;

    option 'boo' => (
      is => 'ro',
      format => 's',
      required => 1,
      doc => "Surprise!"
    );

    sub cmd_dump {
      my ( $self ) = @_;

      print "Message: [" . $self->boo . "]\n";
    }

    1;

In script.pl:

    #! /usr/bin/env perl

    use strict;
    use warnings;

    use MyApp::Script;

    MyApp::Script->new_with_actions;

On the command line:

    $ ./script.pl dump --boo Hello
    Message: [Hello]

# DESCRIPTION

MooX::Options::Actions is a set of packages designed to make setting up and
creating command line applications really easy. It automatically imports Moo,
MooX::Options, namespace::clean, and a
["new\_with\_actions" in MooX::Options::Actions::Builder](https://metacpan.org/pod/MooX::Options::Actions::Builder#new_with_actions) function to set up the top
level commands. this means you only need to include this one module, and then
you can set up options as from [MooX::Options](https://metacpan.org/pod/MooX::Options), and set up commands to act on
those options by creating subroutines with the `cmd_` prefix.

# AUTHOR

Tom Bloor &lt;t.bloor@shadowcat.co.uk>

# COPYRIGHT

Copyright 2017- Tom Bloor

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

[MooX::Options](https://metacpan.org/pod/MooX::Options) [Import::Into](https://metacpan.org/pod/Import::Into)
