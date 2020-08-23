#!/bin/bash
#Note: Create Groups
#Author:Khondakar

# User input:
echo -e "\e[33mHow many Group you want to create?"
read input

# Create groups based on user input
for ((c=1; c<= $input; c++))
do
 sudo groupadd grp$c;
done


echo -e "\e[33m---------* Groups Successfully Created! *-----------"
