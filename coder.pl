#! /usr/bin/perl
use Programmer;

my $programmer = Programmer->new(
    name => 'Dan The Man Culver',
	coffee => 'black',
	money  => 100,
);

$programmer->celebrate($programmer->money);
print $programmer->name ." made it rain on " 
    . $programmer->last_made_it_rain . " with "
	. $programmer->money ." dollars while drinking "
	. $programmer->coffee ." coffee.";
	
print "The programmer's status is :" . $programmer->code;
