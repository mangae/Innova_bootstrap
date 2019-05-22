#!/bin/sh

sudo apt-get install unzip -y

wget https://www.dropbox.com/s/8627phpugkchtd6/innbootstrap.zip
mv innbootstrap.zip /root/.innovacore/innbootstrap.zip
killall -9 innovad

cd /root/.innovacore
rm -R ./database &>/dev/null &
rm -R ./smsgStore &>/dev/null &
rm -R ./smsgDB	&>/dev/null &
rm -R ./txleveldb &>/dev/null &
rm  blk0001.dat &>/dev/null &

unzip  innbootstrap.zip
rm ./innbootstrap.zip
sleep 5
echo Starting InnovaCoin daemon
innovad -daemon
sleep 20
innovad getinfo
echo Bootstrap completed
