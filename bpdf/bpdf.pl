#!/usr/bin/env perl

use strict;
use warnings;

unless (@ARGV) {
    die "Usage: perl script.pl <filename>\n";
}

my $filename = shift @ARGV;

open(my $fh, '<', $filename) or die "Could not open file '$filename' for reading: $!";
my $first_line = <$fh>;

if ($first_line =~ /pdflatex/) {
    print "creating pdf with pdflatex...\n";
    my $my_command = qx(pdflatex $filename);
    print $my_command;
} elsif ($first_line =~ /lualatex/) {
    print "create a pdf with lualatex...\n";
    my $my_command = qx(lualatex $filename);
    print $my_command;
} else {
    print "unknown engine!"
}
  
