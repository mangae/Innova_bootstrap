#!/bin/sh

sudo apt-get install unzip -y

wget https://github.com/innova-foundation/innova/releases/download/v4.3.8.9/innovabootstrap.zip
mv innovabootstrap.zip /root/.innova/innovabootstrap.zip
killall -9 innovad

sleep 10

cd /root/.innova
rm -R ./database &>/dev/null &
rm -R ./smsgDB &>/dev/null &
rm -R ./txleveldb	&>/dev/null &
rm peers.dat  &>/dev/null &
rm debug.log &>/dev/null &

sleep 10

unzip innovabootstrap.zip
rm ./innovabootstrap.zip
sleep 5
echo Starting Innova daemon
innovad -daemon
sleep 20
innovad getinfo
echo Bootstrap completed
