#!/bin/sh
## ddclient
NAMEOFAPP="ddclient"

## Dependencies Check
sudo bash /etc/piadvanced/dependencies/dep-whiptail.sh

## Variables
source /etc/piadvanced/install/firewall.conf
source /etc/piadvanced/install/variables.conf
source /etc/piadvanced/install/userchange.conf

{ if 
(whiptail --title "$NAMEOFAPP" --yes-button "Skip" --no-button "Proceed" --yesno "Do you want to install $NAMEOFAPP ?" 10 80) 
then
echo "User Declined $NAMEOFAPP"
else
sudo apt-get install -y ddclient
fi }

unset NAMEOFAPP
