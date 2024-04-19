#!/bin/bash
# Program: VTSTech-update.sh
# Version: 0.0.2
# Operating System: Kali Linux
# Description: Debian Updater
# Author: VTSTech
# https://github.com/VTSTech
# Dependencies: apt
echo '[**************************************************************]'
echo '[* Running Kali Linux Updater by VTSTech (www.VTS-Tech.org)...*]'
echo '[******************************************v0.2*04-19-2024*****]'
if [[ -z $1 ]];
then 
		echo '[* Usage:]'
		echo '[* -d apt-get dist-upgrade]'
		echo '[* -r sudo reboot]'		
fi
sudo apt-get update && sudo apt-get upgrade -y
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
		done
fi
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
