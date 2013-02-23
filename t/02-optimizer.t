#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Regexp::Optimizer;
use Test::More;

plan tests => 3;
my $ro = Regexp::Optimizer->new();
is $ro->as_string(qr/foobar|fooxar|foozap/),
  Regexp::Assemble->new->add(qw/foobar fooxar foozap/)->re,
 'Regexp::Assemble';

my $re_noneed = qr/no(alteration(in(the(expression))))/;
is $ro->optimize($re_noneed), $re_noneed, 'Already Optimzed';
my $re_nested = qr/f(?:oo(?:l|lish|lishness)?)/;
is $ro->as_string($re_nested), qr/f(?:oo(?:l(?:ish(?:ness)?)?)?)/, 'Nested'
