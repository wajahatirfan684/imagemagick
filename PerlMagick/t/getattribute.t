#!/usr/bin/perl
#  Copyright 1999-2012 ImageMagick Studio LLC, a non-profit organization
#  dedicated to making software imaging solutions freely available.
#
#  You may not use this file except in compliance with the License.  You may
#  obtain a copy of the License at
#
#    http://www.imagemagick.org/script/license.php
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
# Test getting attributes.
#
BEGIN { $| = 1; $test=1, print "1..25\n"; }
END {print "not ok 1\n" unless $loaded;}
use Image::Magick;
$loaded=1;

require 't/subroutines.pl';

chdir 't' || die 'Cd failed';

testGetAttribute('input.miff','base-columns','70');

++$test;
testGetAttribute('input.miff','base-filename','input.miff');

++$test;
testGetAttribute('input.miff','base-rows','46');

++$test;
testGetAttribute('input.miff','class','DirectClass');

++$test;
testGetAttribute('input.miff','colors','3019');

++$test;
testGetAttribute('input.miff','columns','70');

++$test;
testGetAttribute('input.miff','directory',undef);

++$test;
testGetAttribute('input.miff','gamma','0.45455');

++$test;
testGetAttribute('input.miff','geometry',undef);

++$test;
testGetAttribute('input.miff','height','46');

++$test;
# Returns undef
testGetAttribute('input.miff','label',undef);

++$test;
testGetAttribute('input.miff','matte','0');

++$test;
testGetAttribute('input.miff','error','0');

++$test;
testGetAttribute('input.miff','montage',undef);

++$test;
testGetAttribute('input.miff','maximum-error','0');

++$test;
testGetAttribute('input.miff','mean-error','0');

++$test;
testGetAttribute('input.miff','rows','46');

++$test;
testGetAttribute('input.miff','signature',
  '6a4a257921582768b774aeeac549b7c0c0b51f665395eddf921cce53a0ad2a33');

++$test;
testGetAttribute('input.miff','texture',undef);

++$test;
testGetAttribute('input.miff','type','TrueColor');

++$test;
testGetAttribute('input.miff','units','undefined units');

++$test;
testGetAttribute('input.miff','view',undef);

++$test;
testGetAttribute('input.miff','width','70');

++$test;
testGetAttribute('input.miff','x-resolution','72');

++$test;
testGetAttribute('input.miff','y-resolution','72');

1;
