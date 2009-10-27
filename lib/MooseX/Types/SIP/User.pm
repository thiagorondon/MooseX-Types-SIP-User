
package MooseX::Types::SIP::User;

our $VERSION = '0.01';

use MooseX::Types -declare => ['SipUser'];
use MooseX::Types::Moose qw(Str);

sub _validate_sip_user {
    my ($str) = @_;
    return $str =~ /sip:*@*/ ? 1 : 0; ;
}

subtype SipUser,
    as Str, where { _validate_sip_user($_) };

coerce SipUser
    from Str, via { uc };

__END__

=head1 NAME

MooseX::Type::Sip::User - SIP User type for Moose classes.

=head1 SYNOPSIS

    package Class;
    use Moose;
    use MooseX::Type::SIP::User qw(SipUser);
    
    has 'user' => ( is => 'ro', isa => SipUser );

    package main;
    Class->new( user => 'sip:foo@domain.org');

=head1 DESCRIPTION

This module lets you constrain attributes to only contain sip user domain.

=head1 EXPORT

None by default, you'll usually want to request C<SipUser> explicitly.

=head1 AUTHOR

Thiago Rondon C<< <thiago@aware.com.br> >>

Aware TI (L<http://www.aware.com.br/>)

=head1 COPYRIGHT

This program is free software, you may redistribute it under the same terms as Perl itself.

=cut

1;

1;

