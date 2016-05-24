package Bencher::Scenario::IntValidation;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Which method of checking for integer is fastest in Perl?',
    participants => [
        {
            name => 'regex',
            code_template  => '<data> =~ /\A-?[0-9]+\z/',
        },
        {
            name=>'SUN::isint',
            fcall_template => 'Scalar::Util::Numeric::isint(<data>)',
        },
        {
            name=>'SUN::PP::isint',
            fcall_template => 'Scalar::Util::Numeric::PP::isint(<data>)',
        },
    ],

    datasets => [
        {
            args => {
                'data@' => [0, 1, -1, "foo"],
            },
        },
    ],
};

1;
# ABSTRACT:
