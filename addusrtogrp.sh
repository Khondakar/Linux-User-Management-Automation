#!/bin/bash
# Note: Add users to the groups.
# Author: Khondakar

sudo usermod -a -G grp1 Usr1
sudo usermod -a -G grp2 Usr2
sudo usermod -a -G grp3 Usr3

echo "---- Users being added to the Groups --------"
