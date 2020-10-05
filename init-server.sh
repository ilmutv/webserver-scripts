#!/bin/bash

# author: zahari baharom

# re-synchronize the package index files from their sources
apt-get update

# install newest versions of all packages installed on the system
apt-get -y upgrade

# configure server timezone
timedatectl set-timezone Asia/Kuala_Lumpur

# configure uncomplicated firewall
ufw allow 22/tcp
ufw allow 80/tcp
ufw --force enable

# install tree utility
apt-get install tree

# install unzip utility
apt-get install unzip

# remove packages installed to satisfy dependencies but are now no longer needed
apt-get -y autoremove

# clears out the local repository of retrieved package files
apt-get -y clean

# display current status
printf "%b\n" "\nThe init-server.sh script has finished running."
printf "%b\n" " All system packages were successfully updated.\n"
printf "%b\n" "The following configurations were performed:"
printf "%b\n" " Timezone: Asia/Kuala_Lumpur"
printf "%b\n" " Uncomplicated Firewall: Enabled"
printf "%b\n" " Uncomplicated Firewall Ports Opened: 22 & 80\n"
printf "%b\n" "The following packages were installed:"
printf "%b\n" " Tree"
printf "%b\n" " Unzip\n"
printf "%b\n" "The following maintenance tasks were performed:"
printf "%b\n" " apt-get autoremove"
printf "%b\n" " apt-get clean\n"

# comment added to test pull command run locally

