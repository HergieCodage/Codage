#!/bin/bash
#Par defaut les variables sont global

function Menu() {
	groupadd administratif > /dev/null 2>&1
	groupadd comptable > /dev/null 2>&1
	groupadd informatique > /dev/null 2>&1
	mkdir /home/administratif
	mkdir /home/administratif/stagiaire
	mkdir /home/compta
	mkdir /home/public
	clear
	echo "**********************************"
	echo "              Menu                "
	echo "**********************************"
	echo
	echo "1) Create user"
	echo "2) Delete user"
	echo "3) Add service"
	echo "4) Delete service"
	echo "5) Close the script"
	echo
	echo -n "Do your choice : "
	read choice
	clear
	case $choice in
	        1) verif_user;;
	        2) del_user;;
	        3) add_service;;
	        4) del_service;;
	        5) exit;;
	        *) echo -e "\nCan you select right choice ?\n"
	           sleep 2
	           clear;;
	esac
}

function verif_user() {
	echo -n "What's username : "
	read username
	condition=`cat /etc/passwd | grep $username`
	if [[ -z $condition ]] # si la cmd dans la variable ne retourne pas de resultat
	then
		add_user
	else
		echo "$username is already present"
		verif_user
	fi
}

function add_user(){
	apt -y install whois > /dev/null 2>&1
	#echo -n "What's password : "
	#read -s password
	password=`mkpasswd -m sha-512 "password"`
	useradd $username -m -p $password # = adduser (interactif)
	echo "User is now created"
	dossiers="Bureau Documents Images Musique Vidéos Téléchargements"
	for dossier in $dossiers
	do
		mkdir /home/$username/$dossier
	done
	i=0
	while [ $i -lt 101 ] #for i in `seq 0 101`
	do
		touch /home/$username/Documents/file$i.txt
		((i+=1)) #i=$((i+1))((i=i+1))((i++))let "i=i+1"let "i+=1"let "i++"
	done
	sleep 1
	clear
	Menu
}

function add_user_from_file(){
	while read username
	do
		useradd $username -m -p "password"
	done < list_of_users.txt
}

function del_user(){
	echo -n "What's username : "
	read username
	userdel $username # = deluser
	rm -r /home/$username
	echo "User is now deleted"
	sleep 1
	clear
	Menu
}

function add_service(){
	echo -n "What's username : "
	read username
	echo -n "What's service want to join : "
	read service
	usermod -aG $service $username #to verif -> id $username
	echo "$username is now in $service"
	sleep 1
	clear
	Menu
}

function del_service(){
	echo -n "What's username : "
	read username
	echo -n "What's service want to leave : "
	read service
	deluser $username $service > /dev/null 2>&1 #to verif -> id $username
	echo "$username has leave $service"
	sleep 1
	clear
	Menu
}

Menu
