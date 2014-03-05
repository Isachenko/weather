#!/bin/sh
. $PWD/pogoda.conf
echo $DELAY
while (true)
do
	if [ -f $PAGEFILE ]; then rm $PAGEFILE; fi
	wget -t 1 -O $PAGEFILE http://www.gismeteo.by/weather-minsk-4248/
	
done