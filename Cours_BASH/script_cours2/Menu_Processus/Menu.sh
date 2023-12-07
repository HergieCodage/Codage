###############################################################################
##############Infos Personnels sur le codeur et rédacteur #####################
#Codeur: Jean-Michel ROSEE
#
#Site Web: https://savoirpourtous.eu/
#Chaine Youtube: https://www.youtube.com/c/savoirpourtous
#Ce code peut être récupérable sur le site web, vous pouvez le modifier, le partager,
#Par contre, si vous trouvez celui-ci intéressant, n'hésitez pas à partager mon site web ou chaine Youtube
#Bonne vidéo, bon code et bon apprentissage
###############################################################################


#!/bin/bash
#Implémentation des fichiers color et functions
. color.sh
. functions.sh

echo `clear`
#Boucle infini tant que le Q n'est pas tapé, d'où le break à la fin.
while true; do
	clear
	echo -e "${Title}                             ${Normal}"
	echo -e "${Title}           Menu              ${Normal}"
	echo -e "${Title}                             ${Normal}"
	echo -e "${Blank}                             ${Normal}"
	echo -e "${Blank} ${Normal}                           ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper 1: Lancement    ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper 2: Suppression  ${Blank} ${Normal}"
  echo -e "${Blank} ${Normal}     Taper 3: Affichage    ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper Q: Quitter      ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}                           ${Blank} ${Normal}"
	echo -e "${Blank}                             ${Normal}"
	echo "                             "
	read -p "Entrez votre choix: " choix
	case "$choix" in
		#Si c'est 1, alors je lance la fonction Ouverture
		1) Ouverture
			;;
			#Si c'est 2, alors je lance la fonction Delete
		2) Delete
			;;
			#Si c'est 3, alors je lance la fonction Affichage
		3) Affichage
			;;
		"q"|"Q") echo "Bonne journée et à la prochaine ...";
		WaitEnter
		break;
		  ;;
			#Si c'est un autre choix, j'affiche Mauvais Choix
		*) echo "Mauvais choix"
	esac

done
