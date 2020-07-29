package Test::Alien::GSL::GslConfigMB;

use 5.018;
use strict;
use warnings;

use Alien::GSL;
use File::Spec;

sub run {
    if (Alien::GSL->install_type eq "share") {
        my $dist_dir = Alien::GSL->dist_dir;
        my $bin_dir = File::Spec->catfile( $dist_dir, "bin" );
        $ENV{PATH} .= ":$bin_dir";
        say "Running gsl-config from share dir: ", $bin_dir;
    }
    else {
        say "Running gsl-config from system install dir";
    }
    system "gsl-config", "--prefix";
}


=head1 NAME

Test::Alien::GSL::GslConfigMB - The great new Test::Alien::GSL::GslConfigMB!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Test::Alien::GSL::GslConfigMB;

    my $foo = Test::Alien::GSL::GslConfigMB->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

sub function1 {
}

=head2 function2

=cut

sub function2 {
}

=head1 AUTHOR

Håkon Hægland, C<< <hakon.hagland at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-test-alien-gsl-gslconfigmb at rt.cpan.org>, or through
the web interface at L<https://rt.cpan.org/NoAuth/ReportBug.html?Queue=Test-Alien-GSL-GslConfigMB>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Test::Alien::GSL::GslConfigMB


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<https://rt.cpan.org/NoAuth/Bugs.html?Dist=Test-Alien-GSL-GslConfigMB>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Test-Alien-GSL-GslConfigMB>

=item * CPAN Ratings

L<https://cpanratings.perl.org/d/Test-Alien-GSL-GslConfigMB>

=item * Search CPAN

L<https://metacpan.org/release/Test-Alien-GSL-GslConfigMB>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

This software is copyright (c) 2020 by Håkon Hægland.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.


=cut

1; # End of Test::Alien::GSL::GslConfigMB
