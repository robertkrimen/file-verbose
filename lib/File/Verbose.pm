package File::Verbose;

use warnings;
use strict;

=head1 NAME

File::Verbose -

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

use vars qw/@ISA @EXPORT @EXPORT_OK %EXPORT_TAGS/;

@ISA = qw/Exporter/;
@EXPORT_OK = qw/rename/;
$EXPORT_TAGS{all} = \@EXPORT_OK;

use Carp::Clan qw/^(?:File::Verbose|Context::Preserve)/;
use Exporter;
use Context::Preserve;

sub rename {
    my ($from, $to) = @_;

    return preserve_context {
        CORE::rename $from, $to
    }
    after => sub { $_[0] or carp "rename($from, $to): $!" }
    ;
}

=head1 AUTHOR

Robert Krimen, C<< <rkrimen at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-file-verbose at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=File-Verbose>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc File::Verbose


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=File-Verbose>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/File-Verbose>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/File-Verbose>

=item * Search CPAN

L<http://search.cpan.org/dist/File-Verbose>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2008 Robert Krimen, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of File::Verbose
