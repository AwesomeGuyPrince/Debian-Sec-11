#!/bin/bash
#coded by CryptoKingYT
#debian-sec
figlet -f slant 'DEBIAN-SEC' | lolcat && figlet -f digital  " Coded by CryptoKingYT" | lolcat

# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....
# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
# ...
clear
figlet -f digital  " Downloading Keyring " | lolcat
curl -L https://ftp-master.debian.org/keys/archive-key-11-security.asc | apt-key add
sleep 2
figlet -f digital  " Writing Sources.list " | lolcat
echo "deb http://deb.debian.org/debian-security/ bullseye-security main" | sudo tee /etc/apt/sources.list
sleep 2
figlet -f digital  " Updating Source List " | lolcat
apt update -y
sleep 2 
figlet -f slant 'DEBIAN-SEC' | lolcat && figlet -f digital  " Coded by CryptoKingYT" | lolcat
exit
