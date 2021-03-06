package TestApp::Model::JDBI;

use strict;
use warnings;
use base qw( Catalyst::Model::Jifty::DBI );

__PACKAGE__->config(
  schema_base  => 'TestApp::Schema',
  connect_info => {
    driver   => 'SQLite',
    database => $ENV{CM_JDBI_MEMORY} ? ':memory:' : 'testdb',
  }
);

1;
