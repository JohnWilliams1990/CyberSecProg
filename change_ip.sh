#!/bin/bash
#  John Williams
#  105201054
#  Date: Thu. Sep. 6, 2018
#  Program: change_ip.sh


#su 

if [ $1 = "-h" ] || [ $1 = "--help" ] || [ -z $1 ] ; then 


echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

echo "use:"
echo "./change_ip.sh -r ---> restart the service"
echo "./change_ip.sh 192.168.10.12 ---> change ip to specific address"
echo "./change_ip.sh ---> change ip to 192.168.10.2"

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
elif [ $1 = "-r" ] ; then 
  ifdown eth0
  ifup eth0
  service apache2 restart
  sleep 10
 # ipaddr=`ip addr | grep eth0 | grep inet|  awk '{print $2}'`
 # echo "ip address is : $ipaddr"

elif [ -z $1 ] ; then

echo "no argue"
  ifdown eth0
  ifconfig eth0 192.168.10.2 
  #service apache2 start
  ipaddr=`ip addr | grep eth0 | grep inet|  awk '{print $2}'`
  echo "ip address is : $ipaddr"

else 

  ifdown eth0
  ifconfig eth0 $1
  #service apache2 start
  ipaddr=`ip addr | grep eth0 | grep inet|  awk '{print $2}'`
  echo "ip address is : $ipaddr"


fi
