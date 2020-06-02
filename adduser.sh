#!/bin/bash
# Note: Add users & set password.
# Author: Khondakar

# Add users:
sudo useradd -m Usr1
sudo useradd -m Usr2
sudo useradd -m Usr3
#	sudo cp -r /etc/skel/. /auto1
#	sudo cp -r /etc/skel/. /auto2
#	sudo cp -r /etc/skel/. /auto3

# Set user passwords:
echo "Please set password for user - 'Usr1' :"
sudo passwd Usr1
echo "Please set password for user - 'Usr2' :"
sudo passwd Usr2
echo "Please set password for user - 'Usr3' :"
sudo passwd Usr3
echo "-----------------------------------"
echo "Users creted & Password set!"
