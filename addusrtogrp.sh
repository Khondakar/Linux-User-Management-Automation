#!/bin/bash
#Note:Add users to the groups.
#Author:Khondakar

sudo usermod -a -G grp1 auto1
sudo usermod -a -G grp2 auto2
sudo usermod -a -G grp3 auto3

echo "---- Users being added to the Groups --------"