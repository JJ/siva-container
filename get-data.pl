#!/usr/bin/env perl

use strict;
use warnings;

use v5.14;

use Web::SIVA;
use JSON;

my $siva_provincia = new Web::SIVA "gr"; # two-letter acronym for provinces in Andalucia
my $data_yesterday = $siva_provincia->day( 4, 3, 2017 ); # As in March 4th, 2017

say encode_json $data_yesterday;
