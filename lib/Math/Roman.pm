module Math::Roman;

my @romans = <
    500 D
    90  XC
    100 C
    50  L
    45  XLV
    10  X
    5   V
>;

sub roman($_) is export {
    for @romans -> $num, $rom {
        for @romans -> $n, $r {
            next unless $n.substr(0, 1) eq '1';
            return "$r$rom" if $num > $n && $_ == $num - $n;
        };
        return "I$rom" when $num - 1;
        return $rom ~ roman($_ - $num) if $_ >= $num;
    }
    return 'I' x $_;
}

#vim:ft=perl6
