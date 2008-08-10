#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'File::Verbose' );
}

diag( "Testing File::Verbose $File::Verbose::VERSION, Perl $], $^X" );
