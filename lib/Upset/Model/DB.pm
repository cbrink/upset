package Upset::Model::DB;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'Upset::Schema',
    
    connect_info => {
        dsn => 'dbi:SQLite:dbname=/home/dylan/code/Upset/slug.db',
        user => '',
        password => '',
    }
);

=head1 NAME

Upset::Model::DB - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<Upset>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<Upset::Schema>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.4

=head1 AUTHOR

Dylan William Hardison

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
