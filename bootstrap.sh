#!/bin/sh

sudo apt-get install unzip -y

wget https://www.dropbox.com/s/rgxacl9myb4kw9p/innovabootstrap.zip
mv innovabootstrap.zip /root/.innovacore/innovabootstrap.zip
killall -9 innovad

sleep 20

cd /root/.innovacore
rm -R ./blocks &>/dev/null &
rm -R ./chainstate	&>/dev/null &
rm peers.dat  &>/dev/null &
rm banlist.dat &>/dev/null &

unzip  innbootstrap.zip
rm ./innbootstrap.zip
sleep 5
echo Starting InnovaCoin daemon
innovad -daemon
sleep 20
innovad getinfo
echo Bootstrap completed
