#!/bin/bash

#Gestion des couleurs et Fonts

#Tout d'abord on va commencer par le code d'échappement /033 et ensuite vient le code de couleur
#On s'amusera à mettre notre résultat de code en Gras, souligné et ainsi de suite

#echo "#########################################################"
#echo "#####Et c'est parti pour la gestion des couleurs ########"
#clear
echo "#########################################################"

export Red="\033[31m"
export Blue="\033[34m"
export Green="\033[32m"
export Bold="\033[1m"
export Italic="\033[3m"
export Underline="\033[4m"
export Reverse="\033[7m"
export Title="\033[0;37;44m"
export Normal="\033[0m"