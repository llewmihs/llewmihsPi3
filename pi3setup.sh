#!/bin/bash

# begin by updating and upgrading
echo "Updating and upgrading..."
sudo apt-get update && sudo apt-get upgrade -y

# install the samba sharing dependencies
echo "Installing samba and samba-common-bin
sudo apt-get install samba samba-common-bin -y

# make the sharing directory
cd
sudo mkdir Mounts

# edit the smb.conf file to share the 
sudo echo = "[PiShare]
 comment=Raspberry Pi Share
 path=/home/pi/Mounts
 browseable=Yes
 writeable=Yes
 only guest=no
 create mask=0777
 directory mask=0777
 public=yes" >> /etc/samba/smb.conf







# set up the mount for the USB HDD
