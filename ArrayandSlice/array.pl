
#Arrays contain an ordered list of scalar values
my @fruit = ('apple', 'oranges', 'guavas', 'passionfruit', 'grapes');
print " @fruit \n";

my @magic_numbers = (23, 42, 69);

my @randan_scalars = ('muble', 123.45, 'Dave cross', -300, $name);

print " @randan_scalars \n";

#Accessing individual elements of an array And Note use of $ as individual element of an array

print "$fruit[0] \n";

#Note use of @ as we are accessing more than one element of the array

print "@fruit[0 , 2, 4 ]\n";

print "@fruit[1 .. 3 ]\n";

#Setting Array Values

$array[4] = 'something';
$array[400] = 'something else';

# print " $array[400] \n";

@array[4,7 .. 9] = ('four', 'seven', 'eight', 'nine');

print " @array[8] \n";








