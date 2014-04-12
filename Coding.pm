#! /usr/bin/perl
package Coding;
use Moose::Role;

has 'is_coding' => (
  is => 'rw',
  isa => 'Bool',
);

sub code {
  my $self = shift;
  
  print "I'm trying to code..\n";
  $self->is_coding(1);
}

1;
