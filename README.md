

files:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
run.sh -->run files below
change_ip.sh --> set the local ip address for Lhost to 192.168.10.2
hack.sh      --> used to automate the setup of the listener on the local machine 
setup.sh     --> used to make the exploit file for the users machine
teardown.sh  --> used to revert machine back to original state before exploit.
server.py    --> python server used to host webpage and deliver payload
index.html   --> webpage for payload
commands.rb  --> used to run inside of the metasploit interperater on the exploited box -->(used: run commands.rb)


Example video: https://www.youtube.com/watch?v=yIlZ8-mECZ8&feature=youtu.be


sources:
<commands.rb(file used and created from online source)>
https://www.offensive-security.com/metasploit-unleashed/custom-scripting/
