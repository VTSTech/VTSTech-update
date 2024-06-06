#!/bin/bash
# Program: VTSTech-update.sh
# Version: 0.03
# Operating System: Kali Linux
# Description: Debian Updater
# Author: VTSTech
# https://github.com/VTSTech
# Dependencies: apt
echo '[**************************************************************]'
echo '[* Running Kali Linux Updater by VTSTech (www.VTS-Tech.org)...*]'
echo '[******************************************v0.3*06-06-2024*****]'
if [[ -z $1 ]];
then 
		echo '[* Usage:]'
		echo '[* -d apt-get dist-upgrade]'
		echo '[* -f apt-get full-upgrade]'
		echo '[* -r sudo reboot]'		
fi
sudo apt-get update -y
if [[ -z $1 ]];
then 
		a=a;
else
		for i in $@
		do 
	        	if [ $i == "-d" ]
	        	then
	        		echo '[****************************]'
	        		echo '[* Running Distro Upgrade...*]'
	        		echo '[****************************]'
	        		sudo apt-get dist-upgrade -y
	        	fi
	        	if [ $i == "-f" ]
	        	then
	        		echo '[****************************]'
	        		echo '[* Running Full Upgrade...  *]'
	        		echo '[****************************]'
	        		sudo apt-get full-upgrade -y
	        	fi	        	
		done
fi
 sudo apt upgrade -y
echo '[*****************]'
echo '[* Cleaning up...*]'
echo '[*****************]'
sudo apt autoremove -y
sudo apt autoclean -y
echo '[*******************************************]'
echo '[* Kali Linux Updater by VTSTech complete. *]'
echo '[*******************************************]'
if [[ -z $1 ]];
then 
		a=a;
else
		for i in $@
		do 
	        	if [ $i == "-r" ]
	        	then
							echo '[********************************************************]'
							echo '[* Kali Linux Updater by VTSTech complete. Rebooting....*]'
							echo '[********************************************************]'
	        		sudo reboot
	        	fi
		done
fi		
