# -*- perl -*-

# t/001_load.t - check module loading and create testing directory

use Test::More tests => 7;

BEGIN { use_ok( 'Etherpad::API' ); }

my $object = Etherpad::API->new ({url => 'http://pad.example.com', apikey => 'password'});
isa_ok ($object, 'Etherpad::API');

is ($object->url(), 'http://pad.example.com');

is ($object->apikey(), 'password');

$object = Etherpad::API->new ();
is ($object, undef);

$object = Etherpad::API->new ({url => 'http://pad.example.com'});
is ($object, undef);

$object = Etherpad::API->new ({apikey => 'password'});
is ($object, undef);
