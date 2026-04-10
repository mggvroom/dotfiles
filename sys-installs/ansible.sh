#!/bin/bash

# checking if user euid is running as root, if not it prompts user to use sudo or root permision.
if [ $(id -u) -eq 0 ]; then

	echo "script is proceeding"

else
	echo "This script requires sudo or root permission"


	exit

fi 	

# checking if apt is installed on the system, if not it tells the user the script uses apt package manager.
if dpkg -s apt > /dev/null 2>&1; then

	echo "apt is installed on your system"
	
else
	echo" this script uses apt package manager to function."
	exit
fi 


# checking if ansible or anyother file with the same name is on the system, and if it is, it returns a conflict occurred.
if command -v ansible > /dev/null 2>&1; then 
	
	echo " ansible exist on your system."
	echo " name conflict occured"
	exit

	

fi








# if Ansible isn't installed or there isn't a file with the name on the user's system, the script asks them if they want to install.
# if the user enter y, the script installs Ansible on their system.

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
