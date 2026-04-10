#!/bin/bash


if [ $(id -u) -eq 0 ]; then

	echo "script is proceeding"

else
	echo "This script requires sudo or root permission"


	exit

fi 	


if dpkg -s apt > /dev/null 2>&1; then

	echo "apt is installed on your system"
	
else
	echo" this script uses apt package manager to function."
	exit
fi 



if command -v ansible > /dev/null 2>&1; then 
	
	echo " ansible exist on your system."
	echo " name conflict occured"
	exit

	

fi










echo " Ansible provides open-source automation that reduces complexity and runs everywhere. Using Ansible lets you automate virtually any task."

echo "Ansible will be install on your system!"

read -p "Enter y to install and n to not install:" input

if [ "$input" = "y" ]; then 
	sudo apt install -y  ansible
	echo " installed is completed for ansible"
	echo 'run this command to see how long your computer have been running:  ansible localhost -m command -a "uptime" '

else 
	exit
fi
