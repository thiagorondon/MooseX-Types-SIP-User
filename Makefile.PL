use inc::Module::Install;

name 'MooseX-Types-SIP-User';
all_from 'lib/MooseX/Types/SIP/User.pm';

requires 'MooseX::Types';

build_requires 'Test::Exception';
build_requires 'Test::More';
build_requires 'ok';

WriteAll();
