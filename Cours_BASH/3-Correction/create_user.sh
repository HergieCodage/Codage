#!/bin/bash

#echo "Your Name : "
#read nom
read -p "Your Name : " name

#echo "Your Firstname : "
#read prenom
read -p "Your Firstname : " fname

fletter=$(echo $fname | cut -c1)
login="$fletter$name"
login_min="$(echo $login |tr [A-Z] [a-z])"

# Create user
sudo useradd -N -m -s /bin/bash "$login_min"
sudo passwd "$login_min"

#Check user
check_user="$(cat /etc/passwd | grep "$login_min")"

#if check_user is empty
if [ -z "$check_user" ]
then
        echo "Bad"
else
        echo "$login_min as been created..."
fi