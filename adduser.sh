#!/bin/bash
#Note: Add users & set password.
#Author: Khondakar

# Add users:
sudo useradd -m auto1
sudo useradd -m auto2
sudo useradd -m auto3
#	sudo cp -r /etc/skel/. /auto1
#	sudo cp -r /etc/skel/. /auto2
#	sudo cp -r /etc/skel/. /auto3

# Set user passwords:
echo "Please set password for user - 'auto1' :"
sudo passwd auto1
echo "Please set password for user - 'auto2' :"
sudo passwd auto2
echo "Please set password for user - 'auto3' :"
sudo passwd auto3
echo "-----------------------------------"
echo "Users creted & Password set!"
