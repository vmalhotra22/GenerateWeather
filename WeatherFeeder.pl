use JSON;

## WeatherFeeder.pl ##
## Created by Varun Malhotra
#
#  This script will Simulate a Weather Feed 
#  Coming from any general Weather Site 
#  Converting that into JSON format and saving at the default location
#
# Creation Date: 3rd Dec, 2017
########################################

# Array of Conditions
# This is used to get random Conditions
my @cond = ('Rainy','Snow','Sunny');

# Weather Data for Cities in Australia
my @citiesdata = (
		{
			lat => 37.7771,
			lon => -122.42,
			sealvl => 56,
			country => "Australia",
			id => "1111",
			name => "Sydney",
			population => 473784374,
			conditions => $cond[rand @cond],
			deg => "celcius",
			dt => 1402344000,
			humidity => int rand(100),
			pressure => 1012.23,
			temp => -39.29
		},
		{
			lat => 47.7771,
			lon => -12.42,
			sealvl => 36,
			country => "Australia",
			id => "2222",
			name => "Melbourne",
			population => 473784374,
			conditions => $cond[rand @cond],
			deg => "celcius",
			dt => 1402344000,
			humidity => int rand(100),
			pressure => 812.23,
			temp => 9.29
		},
		{
			lat => 67.7771,
			lon => -125.42,
			sealvl => 16,
			country => "Australia",
			id => "3333",
			name => "Brisbane",
			population => 4784374,
			conditions => $cond[rand @cond],
			deg => "celcius",
			dt => 1402344000,
			humidity => int rand(100),
			pressure => 912.23,
			temp => 40.29
		},
		{
			lat => 57.7771,
			lon => -162.42,
			sealvl => 76,
			country => "Australia",
			id => "4444",
			name => "Perth",
			population => 773784374,
			conditions => $cond[rand @cond],
			deg => "celcius",
			dt => 1402344000,
			humidity => int rand(100),
			pressure => 312.23,
			temp => -9.29
		},
		{
			lat => 87.7771,
			lon => -182.42,
			sealvl => 86,
			country => "Australia",
			id => "5555",
			name => "Tasmania",
			population => 484374,
			conditions => $cond[rand @cond],
			deg => "celcius",
			dt => 1402344000,
			humidity => int rand(100),
			pressure => 412.23,
			temp => 40.29
		},
		{
			lat => 107.7771,
			lon => -12.42,
			sealvl => 46,
			country => "Australia",
			id => "6666",
			name => "Hamilton",
			population => 973784374,
			conditions => $cond[rand @cond],
			deg => "celcius",
			dt => 1402344000,
			humidity => int rand(100),
			pressure => 902.23,
			temp => 9.29
		},
		{
			lat => 37.7771,
			lon => -122.42,
			sealvl => 56,
			country => "Australia",
			id => "7777",
			name => "Adelaide",
			population => 373784374,
			conditions => $cond[rand @cond],
			deg => "celcius",
			dt => 1402344000,
			humidity => int rand(100),
			pressure => 912.23,
			temp => 29.29
		},
		{
			lat => 97.7771,
			lon => -22.42,
			sealvl => 96,
			country => "Australia",
			id => "8888",
			name => "Gold Coast",
			population => 573784374,
			conditions => $cond[rand @cond],
			deg => "celcius",
			dt => 1402344000,
			humidity => int rand(100),
			pressure => 102.23,
			temp => 34
		},
		{
			lat => 67.7771,
			lon => -22.42,
			sealvl => 86,
			country => "Australia",
			id => "9999",
			name => "Newcastle",
			population => 73784374,
			conditions => $cond[rand @cond],
			deg => "celcius",
			dt => 1402344000,
			humidity => int rand(100),
			pressure => 102.23,
			temp => -1.29
		},

	);

# Creating Hash of arrays
my %list = (
   lists => [ @citiesdata ],
);

# Converting the Hash into the JSON format via JSON Object
my $json = JSON->new->allow_nonref;
my $json_text = $json->encode(\%list);

# Filename for Weather Feed
my $filename = 'weatherfeed.txt';

# Check if the file exists or not
# If it exists then remove the file
if ( -e $filename ) {
        unlink($filename) or die "$filename: $!";
}

# Create a new Weather Feed file and save the JSON formatted Weather Data into the same
open (FH, ">$filename") || die "cannot create a new file\n";
print FH "$json_text";
close FH;