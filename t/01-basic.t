#!/usr/bin/perl -w

use strict;
use warnings;

use Test::Most;

use File::Verbose qw/:all/;

plan qw/no_plan/;

File::Verbose::rename qw/a b/ or warn "SDSD";

ok(1);
