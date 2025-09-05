#Types of Perl Variable AND Scalar Variables 

my $name = "Arthur";
my $Whoami = 'Just Another Perl Hacker';
my $meaning_of_life = 42;
my $number_less_than_1 = 0.000001;
my $very_large_number = 3.27e17;
my $sum = $meaning_of_life + $number_less_than_1;
print "$name says, 'The meaning of life is $sum.' \n";


#Quoting String, Use a backslash to escape special characters in double quoted string

my $price = '9.95';

my $invline = "24 widgets @ $price each \n";
print $invline;
print "He said \"The price is \$300\"\n";
# print q(He said "The price is \$300");

if (defined($price)){
    print "Yes \n";
} else {
    print "no"
}

#Default variable 
$_ = "Bonjour Molid \n";
print ;

my @noms = ('Alice', 'Bob', 'Chloé');

foreach (@noms) {
    print "Salut $_\n";
}