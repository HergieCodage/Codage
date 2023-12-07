#!/bin/bash

. color.sh
echo `clear`

printf "${Underline}${Green}Les fruits, c'est bon pour la santé:${Normal}\n\n"
#Je demande par de mettre l'argent avant de pouvoir choisir
read -p "Merci de mettre au minimum 5 euros :" argent
echo ""

#si la somme donnée est plus grand ou égal à 5 euros, on accéède au menu, sinon on tombe sur le message désolé ...
if [ ${argent} -ge 5 ]; then

	echo -e "###########################################"
	echo -e "### ${Green}Bienvenue au niveau du distributeur${Normal} ###"
	echo -e "###########################################"
	echo -e "########### ${Blue}Choix 1${Normal}: poire ################"
	echo -e "########### ${Blue}Choix 2${Normal}: pomme ###############"
	echo -e "########### ${Blue}Choix 3${Normal}: banane  ################"
	echo -e "###########################################"
	echo -e "###########################################"

	#le choix donné est positionné dans la variable choix
	read -p "Quel est votre choix(poire, pomme, Banane)" choix


	case "$choix" in
   		"poire" | "Poire" | 1) echo -e "${Green}Hum, le poires sont très juteuses ${Normal}.\n"
   		 ;;
   		"banane" | "Banane") echo "J'aime bien ce fruit, j'en mange tous les jours."
   		;;
   		"pomme" | "Pomme") echo -e "${Green}Ce fruit est bon, de plus il est plein de pectine.${Normal}"
   		;;
   		# le symbole * permet de mettre par défaut au cas si aucun choix ne convienne comme la confition if else
   		*) echo "pas de choix, désolé !!!"
		;;
	esac

else
	echo -e "${Red}Désolé, vous n'avez pas assez d'argent, veuillez mettre au moins 5 euros ${Normal}"
fi

#Lorsque vous récupérez le fichier zippé, pensez à faire la commande chmod +x sur les 2 fichiers afin de pouvoir les exécutés.
