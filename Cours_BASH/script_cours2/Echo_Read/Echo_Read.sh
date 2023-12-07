#!/bin/bash

#Gestion des commandes echo et read

echo "##########################################"
echo "#####Et c'est parti pour le script########"
echo "##########################################"

#Avant d'attaquer les commandes, je voulais vous montrer une
#autre façon de déclarer une variable.

Miss="Mademoiselle"

echo ${Miss}

echo -e "Bonjour\nMonsieur"
echo -e "\n\n"

echo -e "Bonjour\tMadame"

echo -e "Bonjour\$madame"

read -p "Quel est votre nom?" name
echo "Bonjour je m'appelle $name"

read -s -p "Quel le mot de passe ?" name1
echo "Votre mot de passe est: ${name1}"
