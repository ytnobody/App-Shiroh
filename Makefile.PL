use inc::Module::Install;
name 'App-Shiroh';
all_from 'lib/App/Shiroh.pm';

requires 'Net::Twitter::Lite';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
install_script 'bin/shiroh';
auto_set_repository;
auto_include;
WriteAll;
