#!/bin/bash
# Program: VTSTech-update.sh
# Version: 0.0.1
# Operating System: Kali Linux
# Description: Debian Updater
# Author: VTSTech
# https://github.com/Veritas83
# Dependencies: apt
echo '[**************************************************************]'
echo '[* Running Kali Linux Updater by VTSTech (www.VTS-Tech.org)...*]'
echo '[**************************************************************]'
sudo apt-get update && sudo apt-get upgrade -y
echo '[****************************]'
echo '[* Running Distro Upgrade...*]'
echo '[****************************]'
sudo apt-get dist-upgrade -y
echo '[*****************]'
echo '[* Cleaning up...*]'
echo '[*****************]'
sudo apt autoremove -y
sudo apt autoclean -y
echo '[********************************************************]'
echo '[* Kali Linux Updater by VTSTech complete. Rebooting....*]'
echo '[********************************************************]'
sudo reboot