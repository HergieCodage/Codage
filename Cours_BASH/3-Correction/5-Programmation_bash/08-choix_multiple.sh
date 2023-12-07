#!/bin/bash

i=0
while [ i -eq 0 ]
do
	read -p "Entrer une valeur [O/N/Q]: " choix
	case $choix in
    	"O") echo "vous avez choisi oui";; 
    	"N") echo "vous avez choisi non";;
    	"Q") exit;;
    	*) echo "reformulez votre choix";;
	esac
done