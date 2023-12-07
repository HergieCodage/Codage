#!/bin/bash
. color.sh
#Gestion des variables avec des couleurs

echo -e "\n${Reverse}################################################"
echo -e "##############Gestion des tableaux##############"
echo -e "################################################${Normal}\n"

#Création d'un tableau indicé ou indexé
echo -e "${Underline}Tableau indicé ou indexé: ${Normal}"

#On déclare un tableau de façon implicite
Tableau_indice=(Pomme Poire Banane Cerise Fraise Kiwi)
echo -e " - ${Blue}Affichage d'un élément du tableau ${Normal}###"
echo -e "${Green}${Tableau_indice[0]}${Normal}\n"

echo -e "  ${Blue}- Affichage de tous les éléments du tableau ${Normal}"
echo -e "${Green}${Tableau_indice[@]}${Normal}\n"

echo " - Affichage du nombre d'éléments dans le tableau"
echo -e "Vous avez ${Green}${#Tableau_indice[@]}${Normal} éléments dans votre tableau\n"

echo "#############################################################"
echo "#############################################################"

#Pour finir vous pouvez utilisez la commande declare -a lorsque
#vous initialisez votre tableau afin d'être sûr que celui-ci
#soit en mode indicé ou indexé.


#Création d'un tableau associatif
echo -e "${Underline}Tableau associatif${Normal}:"
declare -A Tableau_assoc=(['Julien']="10" ['Frank']="15")

echo -e " - ${Blue}Affichage d'un élément du tableau${Normal}"
echo -e ${Green}${Tableau_assoc[Julien]}${Normal}

echo -e " - Affichage de tous les éléments du tableau"
echo -e ${Green}${Tableau_assoc[*]}${Normal}

echo -e " - Affichage des clés dans le tableau"
echo -e ${Green}${!Tableau_assoc[@]}${Normal}

echo -e "Vous avez ${Green}${#Tableau_assoc[@]}${Normal} éléments dans votre tableau"
#le mot declare permet de déclarer le tableau une fois pour toute en mode associatif.
#-A: mode associatif
#-a: mode indicé ou  indexé
