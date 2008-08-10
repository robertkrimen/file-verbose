use inc::Module::Install;

name 'File-Verbose';
all_from 'lib/File/Verbose.pm';

build_requires 'Test::More';

auto_install;

WriteAll;

