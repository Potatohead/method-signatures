#!/usr/bin/perl -w

use strict;
use warnings;

use Test::More 'no_plan';

{
    package Stuff;

    use Test::More;
    use Method::Signatures;

    method whatever($this is foo) {
        return $this;
    }

    is( Stuff->whatever(23),    23 );
}