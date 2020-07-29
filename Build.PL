use 5.018;
use strict;
use warnings;
use Module::Build;
Module::Build->VERSION('0.4004');

my $builder = Module::Build->new(
    module_name         => 'Test::Alien::GSL::GslConfigMB',
    license             => 'perl_5',
    dist_author         => q{Håkon Hægland <hakon.hagland@gmail.com>},
    dist_version_from   => 'lib/Test/Alien/GSL/GslConfigMB.pm',
    release_status      => 'stable',
    configure_requires => {
        'Module::Build' => '0.4004',
    },
    test_requires => {
        'Test::More' => '0',
    },
    requires => {
        'File::Spec'              => '0',
        'Alien::GSL' => '0',
    },
    add_to_cleanup     => [ 'Test-Alien-GSL-GslConfigMB-*' ],
);

$builder->create_build_script();
