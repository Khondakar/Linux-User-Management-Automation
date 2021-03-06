#!/bin/bash
#--------------------------------------------------------------------------------
#Author: Khondakar
#Date: 20/May/2020
#Note: User Management Automation
#About /bash: 'bash' is the most common shell used as a default shell for users of Linux systems. 
#	      'bash' is an abbreviation of Bourne-Again Shell (Developed by Stephen Bourne at Bell Labs. in 1979).
# -------------------------------------------------------------------------------
# To trap Ctrl-C in a shell script, we will need to use the trap shell builtin command. 
# When a user sends a Ctrl-C interrupt signal, the signal SIGINT (Signal number 2) is sent.
trap '' 2  # No control + c allowed

while true
do
  	clear # clear screen for each loop of menu
  	echo -e "\e[32m"  #\e[32m - Green txt
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  	echo -e "\e[31m***    Linux User Management Main Menu      ***" #\e[31m - Red txt
  	echo -e "\e[32m~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  	echo -e "\e[33mCHOOSE FROM THE BELOW OPTIONS:" #\e[33m - Yellow txt
  	echo -e "\e[32m1) Create Users & Set Password." #\e[32m - Green txt
  	echo "2) Create Groups."
	echo "3) Add Users to Groups."
	echo "4) Create .TXT files."
	echo "5) Set Permission to Users."
	echo "6) Delete Users."
	echo "7) Delete Groups."
	echo "8) Exit or Quit."
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo -e "\e[34mPlease select number and press <ENTER> key :" #\e[34m - Blue txt
 	read usrinput  # Create variable to retains the answer
  	echo "----------------------------------------------"
 	case "$usrinput" in
   		1) sudo chmod +x ./adduser.sh #Run this as super user
		   ./adduser.sh ;;	# Run adduser.sh
   		2) sudo chmod +x ./creategrp.sh
		   ./creategrp.sh ;;	# Run creategrp.sh
		3) sudo chmod +x ./addusrtogrp.sh
		   ./addusrtogrp.sh ;;	# Run addusrtogrp.sh
		4) sudo chmod +x ./createtxtfile.sh
		   ./createtxtfile.sh ;; # Run createtxtfile.sh
		5) sudo chmod +x ./setpermission.sh
		   ./setpermission.sh ;; # Run setpermission.sh
		6) sudo chmod +x ./deleteuser.sh
   		   ./deleteuser.sh ;;	# Run deleteuser.sh
		7) sudo chmod +x ./grpdel.sh
		   ./grpdel.sh	;;	# Run grpdel.sh
		8) exit ;;		# Exit from the Main Menu
  	esac
  	echo -e "\e[31mPress the <ENTER> key to continue.."
  	read input # This cause a pause so we can read the output
  		   # of the selection before the loop clear the screen
done

