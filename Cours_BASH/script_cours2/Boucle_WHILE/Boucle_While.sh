#!/bin/bash

. color.sh

#Gestion d'un minuteur
echo `clear`
printf "${Underline}Gestion d'un minuteur${Normal}\n\n"
read -p "Donnez un nombre entre 1 et 120 :" nombre
printf "\n\n"
if  [ "$nombre" -le 1 ] || [ "$nombre" -gt 120 ];then
	printf "votre valeur n'est pas bonne, ${Red}veuillez saisir une valeur comprise entre 1 et 120${Normal}!!"
else
	printf "####### En route pour le calcul #######\n"
	while (($nombre > 0 ))
		do
			nombre=$(($nombre -1 ))
		echo -ne "Temps restant est: ${Blue}$nombre${Normal}\r"

		sleep 1

	done
fi
#Cet echo va permttre de créer un petit bip
echo -e "\a\a"
