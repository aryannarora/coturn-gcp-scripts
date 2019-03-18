#!/bin/bash
#int_ip=$(hostname -i)
#ext_ip=$(curl ifconfig.me)

#sed -i "s/listening-ip=.*/listening-ip=${int_ip}/" turnserver.conf
#sed -i "s/relay-ip=.*/relay-ip=${ext_ip}/" turnserver.conf
#sed -i "s/external-ip=.*/external-ip=${ext_ip}\/${int_ip}/" turnserver.conf

#sudo cp turnserver.conf /usr/local/etc/turnserver.conf

echo "enter mysql host (Default: localhost)"
read host

echo "enter db name (Default: coturn)"
read db

echo "enter username (Default: user)"
read user

echo "enter password: "
read password

sudo sed -i "s/host=/host=${host:=localhost}/" /usr/local/etc/turnserver.conf
sudo sed -i "s/dbname=/dbname=${db:=coturn}/" /usr/local/etc/turnserver.conf
sudo sed -i "s/user=/user=${user:=user}/" /usr/local/etc/turnserver.conf
sudo sed -i "s/password=/password=${password}/" /usr/local/etc/turnserver.conf