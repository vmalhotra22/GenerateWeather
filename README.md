# Project Weather Feed.

Script Name : GenerateWeather.py
	# Written in Python
	# Prerequites: JSON and os modules of Python, Python should be installed on the System.
	# Run using Python IDLE on Windows or 'python <filename>' on linux
	# Please note that this script should run after the WeatherFeeder.pl to get the latest Weather Feed.
	# This project will display the Weather Feed in an appropriate format mentioned below.

	Sydney|-33.86,151.21,39|2015-12-23T05:02:12Z|Rain|+12.5|1004.3|97
	Melbourne|-37.83,144.98,7|2015-12-24T15:30:55Z|Snow|-5.3|998.4|55
	Adelaide|-34.92,138.62,48|2016-01-03T12:35:37Z|Sunny|+39.4|1114.1|12
	where
	• Location is an optional label describing one or more positions,
	• Position is a comma-separated triple containing latitude, longitude, and elevation in metres above sea
	level,
	• Local time is an ISO8601 date time,
	• Conditions is either Snow, Rain, Sunny,
	• Temperature is in °C,
	• Pressure is in hPa, and
	• Relative humidity is a %.

Script Name : WeatherFeeder.pl
	# Written in Perl
	# Prerequites: Use of default JSON module of Perl, Perl should be installed on the System.
	# Run using Active Perl on Windows or 'perl <filename>' on linux.
	# This script will run every minute (put in the cron) to simulate the Weather data and create a file called 'weatherfeed.txt'
	# 'weatherfeed.txt' file would be picked by the GenerateWeather.py script to display the Weather Data in appropriate format.
	
,
More to do:
1. Connect to Weather APIs of different sites and get the live Weather Feed.
