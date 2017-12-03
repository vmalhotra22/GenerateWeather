import json
import os

## GenerateWeather.py ##
## Created by Varun Malhotra
#
#  This script will get the data feed from weatherfeed.txt
#  DIsplay the data in the appropriate format 
#
# Creation Date: 3rd Dec, 2017
########################################

# Load JSON data into a variable
json_file_contents = open(os.path.join("weatherfeed.txt")).read()
wData = json.loads(json_file_contents)

# Run a loop over JSON objects to fetch the Weather Data for each Location
for x in wData['lists']:
    s = str(x['name']) + '|' + str(x['lat']) + ',' + str(x['lon']) + ',' + str(x['sealvl']) + '|' + str(x['dt']) + '|' + x['conditions'] + '|' + str(x['temp']) + '|' + str(x['pressure']) + '|' + str(x['humidity'])
    # Get the output
	print (s)