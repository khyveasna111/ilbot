package Ilbot::Date;
use strict;
use warnings;
use 5.010;

use Exporter qw/import/;

our @EXPORT_OK = qw/gmt_today/;

# returns current date in GMT in the form YYYY-MM-DD
sub gmt_today {
    my @d = gmtime(time);
    return sprintf("%04d-%02d-%02d", $d[5]+1900, $d[4] + 1, $d[3]);
}


1;
