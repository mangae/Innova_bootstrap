#!/bin/sh

sudo apt-get install unzip -y

wget https://www.dropbox.com/s/rzesomb5m9pyvvt/innbootstrap.zip
mv innbootstrap.zip /root/.innova/innbootstrap.zip
killall -9 innovad

sleep 20

cd /root/.innova
rm -R ./database &>/dev/null &
rm -R ./smsgDB &>/dev/null &
rm -R ./txleveldb	&>/dev/null &
rm peers.dat  &>/dev/null &
rm debug.log &>/dev/null &

sleep 10

unzip  innbootstrap.zip
rm ./innbootstrap.zip
sleep 5
echo Starting InnovaCoin daemon
innovad -daemon
sleep 20
innovad getinfo
echo Bootstrap completed
