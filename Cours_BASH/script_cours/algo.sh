#!/bin/bash
#COURS:

#read -p "donne moi un nombre? " nombre

#nombreatrouver=10

#si $nombre>$nombreatrouver
#alors echo "trop haut"

#si $nombre<$nombreatrouver
#alors echo "trop bas"

#si $nombre=$nombreatrouver
#alors echo "bravo tu as trouver"

#EXEMPLE:

#mdp=10

#read -p "mots de passe " nombre

#if [ $nombre != $mdp ]
#then
#	echo "faux"
#else
#	echo "vrai"
#fi

#EXEMPLE 2:

#mdp=10

#echo "mots de passe"
#read nombre

#if [ $nombre -eq $mdp ]
#then
#	echo "vrai"
#else
#	if [ $nombre -lt $mdp ]
#	then
#		echo "tu es un glaçon"
#	else
#		echo "tu t'es pris pour icare ? "
#	fi
#fi
nombre=0
mdp=23
#boucle
while [ $nombre != $mdp ]
do
	echo "mots de passe"
	read nombre

	if [ $nombre -eq $mdp ]
	then
		echo "GG !!"
		echo "Malheureusement tu n'as rien gagné car c'est juste un petit jeu pour s'amuser !"
		echo "Qu'est-ce que tu croyais ?"
		echo "c'est pas le JUSTE PRIX ici !"
	else
#		sur une base de mdp=10
#		si 1<$nombre>5
		if [ $nombre -le 13 ]
		then
			echo "Il fait bon au pôle nord ?"
		fi
#		sur une base de mdp=10
#		si 15<$nombre>20
		if [ $nombre -ge 33 ]
		then
			echo "Tu t'es pris pour icare ? "
		fi
#		sur une base de mdp=10
#		si $nombre = 8 ou 9 ou 11 ou 12 
		if [ $nombre -eq 21 ] || [ $nombre -eq 22 ] || [ $nombre -eq 24 ] || [ $nombre -eq 25 ] 
		then
			echo "Tu chauffe !"
			echo "Essaye encore tu y es presque !"
		else
			echo "Essaye encore !"
		fi
	fi
done
