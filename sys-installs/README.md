# ansible.sh script


- The script first checks if the user euid is running as root, and if it is it procceed with the next statement. 

- Next it checks if apt is install on the system. 

-  command -v ansible check if the software ansible exist, and if there's similar file with the same name on the system.
- After all that if non of the aoftware is install on the system, the script ask the user if they want to install it on their system.

















# Ciatation

- I used this link to get the code to check if apt is already available on the system.
[checking if apt alredy exist](https://linuxvox.com/blog/ubuntu-check-if-package-is-installed/ )


- I used this website to get the code to check if the user euid is running as root .
 [checking user euid](https://linuxvox.com/blog/check-user-id-linux/)






- I used gemini AI to help explain the assignment and I asked it to prompt me a command to prompt the user to try the software installed. I also used it to check my code when it wasn't working.
