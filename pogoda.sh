#!/bin/sh
source pogoda.conf
while (true)
do
	wget -t 1 http://www.gismeteo.by/weather-minsk-4248/
	
done