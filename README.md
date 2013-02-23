p5-regexp-optimizer
===================

Regexp::Optimizer - optimizes regular expressions

SYNOPSIS
--------

  use Regexp::Optimizer;
  my $o  = Regexp::Optimizer->new->optimize(qr/foobar|fooxar|foozap/);
  # $re is now qr/foo(?:[bx]ar|zap)/
