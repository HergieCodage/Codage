#!/bin/bash
. color.sh
#Gestion des variables avec des couleurs

echo -e "${Vert}#######################################################"
echo -e "#####${Normal} Et c'est parti pour le script Shell ${Vert}#############"
echo -e "#######################################################${Normal}\n\n"

echo -e "${Cyan}#########################${Title}Gestion des Variables User${Normal}#####"

#Variable User
echo -e "Votre nom d'utilisateur est:${Bleu}$LOGNAME${Normal}"
echo -e "Votre nom d'utilisateur est:${Orange}${USER}${Normal}"
echo -e "Votre nom d'ordinateur est:${Rouge}$HOSTNAME${Normal}"

echo -e "${Underline}Variables sur le chemin${Normal}"
echo "Les commandes sont exécutés dans le chemin:$PATH"

echo -e "${Reverse}Variable sur le type de shell utilisé${Normal}"
echo "Votre type de shell est:$SHELL"
