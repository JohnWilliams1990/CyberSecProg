#!/bin/bash
#  John Williams
#  105201054
#  Date: Sat. Sep. 29, 2018
#  Program: setup.sh


ifdown eth0 
ifconfig eth0 192.168.10.2   
service apache2 start
ip addr



apt update; 
apt install metasploit-framework
#service postgresql start
#service metasploit start
update-rc postgresql enable 
update-rc.d metasploit enable

