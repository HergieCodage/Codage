#!/bin/bash
. color.sh
. functions.sh
	#statements

echo `clear`

#Il est toujours intéressant de pouvoir placer ses petits bouts de script
#dans un menu, afin de faciliter la lisibilité, en tout cas je fais cela à
#mon travail.

#Dans ce cours, nous allons donc créer un petit menu afin d'avoir différentes
#utilisations.
############# Création du menu #############

#Partie 1

# echo "#############################"
# echo "############ Menu ###########"
# echo "#############################"
# echo "     Taper 1: lisezMoi       "
# echo "     Taper 2: calul          "
# echo "     Taper 3: Multiplions    "
# echo "     Taper Q: Quitter        "
# echo "#############################"
# echo "                             "
# read -p "Entrez votre choix: " choix
# case "$choix" in
# 	1) echo "Lisez-moi"
# 		;;
# 	2) a=3;b=5;c=$((a+b));echo "calcul= $c"
# 		;;
# 	3) echo "Donnez deux nombres afin de multiplier ceux-ci"
# 		 read -p "Nombre 1:" nombre1
# 		 read -p "Nombre 2:" nombre2
# 		 valeur=$((nombre1*nombre2))
# 		 echo "Votre valeur est $valeur"
# 		;;
# 	"q"|"Q") echo "Bonne journée et à la prochaine ..."
# 	  ;;
# 	*) echo "Mauvais choix"
# esac























#Partie 2

# echo "#############################"
# echo "############ Menu ###########"
# echo "#############################"
# echo "     Taper 1: lisezMoi       "
# echo "     Taper 2: calul          "
# echo "     Taper 3: Multiplions    "
# echo "     Taper Q: Quitter        "
# echo "#############################"
# echo "                             "
# read -p "Entrez votre choix: " choix
# case "$choix" in
# 	1) echo "Lisez-moi"
# 		;;
# 	2) a=3;b=5;c=$((a+b));echo "calcul= $c"
# 		;;
# 	3) Multiply
# 		;;
# 	"q"|"Q") echo "Bonne journée et à la prochaine ..."
# 	  ;;
# 	*) echo "Mauvais choix"
# esac

















#Partie 3

while true; do
	clear
	echo -e "${Title}                             ${Normal}"
	echo -e "${Title}           Menu              ${Normal}"
	echo -e "${Title}                             ${Normal}"
	echo -e "${Blank}                             ${Normal}"
	echo -e "${Blank} ${Normal}                           ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper 1: lisezMoi     ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper 2: calul        ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper 3: Multiplions  ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper Q: Quitter      ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}                           ${Blank} ${Normal}"
	echo -e "${Blank}                             ${Normal}"
	echo "                             "
	read -p "Entrez votre choix: " choix
	case "$choix" in
		1) LisezMoi
			;;
		2) a=3;b=5;c=$((a+b));echo "calcul= $c";WaitEnter
			;;
		3) Multiply
			;;
		"q"|"Q") echo "Bonne journée et à la prochaine ...";
		WaitEnter
		  ;;
		*) echo "Mauvais choix"
	esac
	#statements
done
