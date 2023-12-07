#!/bin/bash

. color.sh

#Gestion d'une table de multiplication
echo `clear`
printf "${Underline}Vive les tables de multiplication${Normal}\n\n"
read -p "Donnez un nombre entre 1 et 12 :" nombre
printf "\n\n"
if  [ "$nombre" -le 1 ] || [ "$nombre" -gt 12 ];then
	printf "votre valeur n'est pas bonne, ${Red}veuillez saisir une valeur comprise entre 1 et 12${Normal}!!"
else
	printf "####### En route pour le calcul #######\n"
	#Création de la boucle 
	printf " - ${Underline}Résultat de la table de: $nombre -${Normal} \n"
	for (( i = 1; i <= 10; i++ )); do
		resultat=$(($nombre*$i))
			echo ""
			printf "$nombre * $i = ${Blue}$resultat${Normal}"

	done
fi
echo ""



