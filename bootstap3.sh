#!/bin/sh

sudo apt-get install unzip -y

wget https://www.dropbox.com/s/rgxacl9myb4kw9p/innovabootstrap.zip
cp innovabootstrap.zip /root/.innovacore/innovabootstrap.zip
cp innovabootstrap.zip /root/.innovacore2/innovabootstrap.zip
cp innovabootstrap.zip /root/.innovacore3/innovabootstrap.zip
killall -9 innovad

sleep 20

cd /root/.innovacore
rm -R ./blocks &>/dev/null &
rm -R ./chainstate	&>/dev/null &
rm peers.dat  &>/dev/null &
rm banlist.dat &>/dev/null &

sleep 10

unzip  innovabootstrap.zip
rm ./innovabootstrap.zip
sleep 5
echo Starting InnovaCoin daemon
innovad -datadir=/root/.innovacore --daemon
sleep 20
innova-cli -datadir=/root/.innovacore getinfo
echo Bootstrap1 completed
cd

sleep 10

cd /root/.innovacore2
rm -R ./blocks &>/dev/null &
rm -R ./chainstate	&>/dev/null &
rm peers.dat  &>/dev/null &
rm banlist.dat &>/dev/null &

sleep 10

unzip  innovabootstrap.zip
rm ./innovabootstrap.zip
sleep 5
echo Starting InnovaCoin daemon
innovad -datadir=/root/.innovacore2 --daemon
sleep 20
innova-cli -datadir=/root/.innovacore2 getinfo
echo Bootstrap2 completed
cd

sleep 10

cd /root/.innovacore3
rm -R ./blocks &>/dev/null &
rm -R ./chainstate	&>/dev/null &
rm peers.dat  &>/dev/null &
rm banlist.dat &>/dev/null &

sleep 10

unzip  innovabootstrap.zip
rm ./innovabootstrap.zip
sleep 5
echo Starting InnovaCoin daemon
innovad -datadir=/root/.innovacore3 --daemon
sleep 20
innova-cli -datadir=/root/.innovacore3 getinfo
cd
rm ./innovabootstrap.zip
echo Bootstrap3 completed

