use Math::Roman;
use Test;

my @tests = <
    1   I
    2   II
    4   IV
    5   V
    6   VI
    7   VII
    9   IX
   10   X
   14   XIV
   15   XV
   19   XIX
   38   XXXVIII
   39   XXXIX
   40   XL
   45   XLV
   46   XLVI
   90   XC
   99   XCIX
   400  CD
>;

for @tests -> $arab, $roman {
    is roman($arab), $roman, "roman($arab) is $roman";
}

done;
