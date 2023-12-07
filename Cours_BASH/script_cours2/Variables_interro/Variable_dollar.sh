#!/bin/bash

#Ceci est un commentaire, nous allons donc commencer par les symboles < > = afin de comprendre comment fonctionne une condition
. color.sh

echo `clear`

Repertoire=`pwd`
echo "Vous êtes : ${Repertoire}"

echo "Voici la liste des fichiers présents dans votre répertoire:"
echo -e "${Blue}"
echo "############################################################################"
# ls toto.tyc > /dev/null 2>&1

# Va permettre de liste r tous le sfichiers saf les réêrtoires
compter=`ls -altr | grep -v ^d | wc -l`
ls -altr | grep -v ^d


if [[ $? != 0 ]]; then
	echo -e "${Red}votre répertoire est vide${Normal}"

else

		echo "############################################################################"
		echo -e "${Normal}"
		printf "\n\n"
		echo -e "Dans le répertoire ${Repertoire} Vous avez ${Bold}${Blue}${compter}${Normal} fichiers"
		echo -e "${Normal}"

		read -p "Vérifions si votre fichier existe " Fic

		#Il existe donc plusieurs façons d'utiliser la commande test, donc voiciun exemple noté de deux façons

		# if test -e "$Fic"; then
		# 	echo "Votre fichier existe ...."
		# fi

		if [[ -e $Fic ]]; then
			echo -e "${Green}Votre fichier existe ${Normal}"

		else

		echo -e "${Red}Désolé votre fichier n'existe pas${Normal}"

		fi

fi
