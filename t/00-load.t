#!perl -T
use 5.018;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Test::Alien::GSL::GslConfigMB' ) || print "Bail out!\n";
}

diag( "Testing Test::Alien::GSL::GslConfigMB $Test::Alien::GSL::GslConfigMB::VERSION, Perl $], $^X" );
