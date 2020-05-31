#!/bin/bash
#Note: Delete existing users
#Author:Khondakar

sudo userdel auto1
sudo userdel auto2
sudo userdel auto3

sudo rm -r /auto1
sudo rm -r /auto2
sudo rm -r /auto3
echo "-----* Users succeessfully Deleted *---------."