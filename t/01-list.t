#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Regexp::List;
use Test::More;

plan tests => 1;
my $rl = Regexp::List->new();
is $rl->list2re( 'ab+c', 'ab+-', 'a\w\d+', 'a\d+' ), '(?^:a(?:\w?\d+|b+[-c]))';
