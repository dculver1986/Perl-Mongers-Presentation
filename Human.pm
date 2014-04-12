package Human;
use Moose;

 
has 'name' => (
  is => 'rw',
  isa => 'Str',
  required => 1,
  predicate => 'has_name'
 );
 
 has 'weight' => (
 is => 'rw',
 isa => 'Int',
 builder => '_build_weight',
 clearer => 'clear_weight',
 );
 
 sub _build_weight { return 155; }
 1;
