#!/bin/bash

#                         Firewall tasks:


# First task: 
#the Added rule should be like this
 
#sudo ufw allow from 192.168.1.106 proto tcp to any port 22

# -------------------------------------------

#second task:
# the following bash shell script 

sudo ufw disable
sudo ufw default deny outgoing
sudo ufw default deny incoming

sudo ufw allow  443
sudo ufw allow  22
sudo ufw allow  80
sudo ufw allow  53
sudo ufw allow out  443
sudo ufw allow out 22
sudo ufw allow out 80
sudo ufw allow out 53

sudo ufw enable
