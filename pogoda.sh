#!/bin/sh
. $PWD/pogoda.conf

while (true)
do
	#if [ -f $PAGEFILE ]; then rm $PAGEFILE; fi
	wget -t 1 -O $PAGEFILE http://www.gismeteo.by/weather-minsk-4248/
	grep -m 1 "<dd class='value m_temp c'>" $PAGEFILE > temp
	echo "temperature: " $(sed 's/[^\-\+0-9]//g' temp)
	rm temp
	sleep $DELAY
done