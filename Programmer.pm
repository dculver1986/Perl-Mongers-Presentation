package Programmer;

use Moose;
use Moose::Util::TypeConstraints;
use DateTime;

extends 'Human';
with 'Coding';


has 'coffee' => (
  is => 'rw',
  isa => 'Str',
  lazy => 1,
  default => 'black',
 );
 
has 'money' => (
  is => 'rw',
  isa => 'Int',
  predicate => 'has_money',
  );
  
has 'celebration' => (
  is => 'rw',
  isa => 'DateTime',
  handles => { 'last_made_it_rain' => 'date' }
);

sub celebrate {
    my $self = shift;
	my $dollars = shift;
	
	if ( $self->money ne $dollars ) {
	    return 0;
	}
	
	$self->celebration( DateTime->now() );
	
	return 1;
}

1;
