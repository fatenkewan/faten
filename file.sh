#!/bin/bash

read -p 'Username: ' Username
name=$Username
read -p 'fullname: ' fullname
fullname=$fullname
read -p 'group: '    group
read -sp 'Password: ' Userpassword
sudo useradd -m -c " $fullname " $name
#sudo passwd  $username 
sudo usermod -aG $group $name
mkdir $name
cd $name
touch vacation.txt