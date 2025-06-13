#!/bin/bash
#
#
user="demo1"
group="teamA"
file="secret.txt"

# Create user & group
sudo useradd -m $user
sudo groupadd $group
sudo usermod -aG $group $user

# Create and protect file
echo "Top secret info" > $file
sudo chown $user:$group $file
sudo chmod 700 $file

echo "User, group, and secure file created"





