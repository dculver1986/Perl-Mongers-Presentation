#! /usr/bin/perl
use Human;

my $human = Human->new(name => 'Dan The Man Culver');

print "The human's name is ".$human->name."\n";
print $human->has_name."\n";
print $human->weight."\n";
$human->clear_weight;
print $human->weight."weight is now cleared\n";
