requires 'perl', '5.008005';
requires 'Moo';
requires 'namespace::clean';
requires 'MooX::Options';
requires 'Import::Into';


# requires 'Some::Module', 'VERSION';

on test => sub {
    requires 'Test::More', '0.96';
    requires 'Test::Exception';
};
