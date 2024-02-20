#!/bin/sh
if [ ! -f /home/ubuntu/speedtest/speedtest.csv ]; then
/usr/bin/speedtest --accept-license -f csv --output-header | sed -e "1s/^/\"datetime\", /" -e "2s/^/\"$(date '+%Y-%m-%d %H:%M:%S')\", /" > /home/ubuntu/speedtest/speedtest.csv
else
/usr/bin/speedtest --accept-license -f csv | sed "s/^/\"$(date '+%Y-%m-%d %H:%M:%S')\", /" >> /home/ubuntu/speedtest/speedtest.csv
fi
