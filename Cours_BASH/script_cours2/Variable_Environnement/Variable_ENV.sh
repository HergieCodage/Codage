#!/bin/bash

#Gestion des variables d'environnement

echo "#################################################"
echo "#####Et c'est parti pour le script Shell ########"
echo "#################################################"

#Variable User
echo "Votre nom d'utilisateur est :$LOGNAME"
echo "Votre nom d'utilisateur est ${USERNAME}"
echo "Votre nom d'ordinateur est: $HOSTNAME"

#Variables directory
echo "Vous êtes dans le répertoire $PWD"
echo "Votre répertoire personnel est: $HOME"

#Variables sur le chemin
echo "Les commandes sont exécutés dans le chemin: $PATH"

#Variables sur le type de shell utilisé
echo "Votre type de shell est :$SHELL"