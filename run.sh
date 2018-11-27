#!/bin/bash
#  John Williams
#  105201054
#  Date: Thu. Nov. 22, 2018
#  Program: run.sh

#red=`tput setaf 1`
#green=`tput setaf 2`
#reset=`tput sgr0`
#
#echo "${red}Please move machine to NAT here:"
#read -n1 -r -p "Press space to continue...${reset}" key


./setup.sh
./hack.sh
./teardown.sh

