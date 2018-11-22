#!/bin/bash
#  John Williams
#  105201054
#  Date: Fri. Oct. 12, 2018
#  Program: teardown.sh


red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo

#echo "${green} ${reset}"
echo "${red}[*]Please move machine networt to NAT here:"
read -n1 -r -p "Press space to continue...${reset}" key

echo "${green}[*]Remove old files ${reset}"
rm -f meta
rm -f evilPutty.exe
rm -f putty.exe
rm -f os

echo "${green}[*]Reset Ip address to Dynnamic ${reset}"
./change_ip.sh -r



