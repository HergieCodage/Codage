#!/bin/bash
. color.sh
#Gestion des variables avec des couleurs

echo -e "${Green}#################################################"
echo -e "#####${Normal}Et c'est parti pour le script Shell ${Green}########"
echo -e "#################################################${Normal}\n\n"

echo -e "###################### ${Title}Gestion des Variables User ${Normal}#######"

#Variable User
echo -e "Votre nom d'utilisateur est :${Blue}$LOGNAME${Normal}"
echo -e "Votre nom d'utilisateur est ${Green}${USERNAME}${Normal}"
echo -e "Votre nom d'ordinateur est: ${Red}$HOSTNAME${Normal}"

echo -e "${Underline}Variables directory${Normal}"
echo "Vous êtes dans le répertoire $PWD"
echo "Votre répertoire personnel est: $HOME"

echo -e "${Bold}Variables sur le chemin${Normal}"
echo "Les commandes sont exécutés dans le chemin: $PATH"

echo -e "${Reverse}Variables sur le type de shell utilisé${Normal}"
echo "Votre type de shell est :$SHELL"
