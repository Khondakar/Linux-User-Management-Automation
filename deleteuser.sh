#!/bin/bash
#Note: Delete existing users
#Author:Khondakar

sudo userdel auto1 
sudo userdel auto2
sudo userdel auto3

sudo userdel -r auto1 # '-r' option is deleting user's home directory
sudo userdel -r auto2
sudo userdel -r auto3

#sudo rm -r /home/auto1
#sudo rm -r /home/auto2
#sudo rm -r /home/auto3
echo "-----* Users succeessfully Deleted *---------."
