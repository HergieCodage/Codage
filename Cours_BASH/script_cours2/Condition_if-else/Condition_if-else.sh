#!/bin/bash
. color.sh
#Avant toute chose il va falloir regarder les symboles de
#comparaisons pour les chaines de caractères ou les nombres.

#En premier regardons les symboles de comparaison pour les nombres
#Gestion des conditions avec if et fi
echo -e "${Underline}Etudions la condition if et fi:${Normal}\n"

read -p "Bonsoir, quel âge avez-vous ? " age

if [ ${age} -gt 18 ]; then
	echo -e "${Green}Bienvenue et amusez-vous bien!!${Normal}"
fi

# Il se passe un problème tant que l'âge de la personne est inférieur à 18,
# rien se s'affiche, je trouve cela dommage, heuresuement il existe
# else qui voudra dire sinon, mais regardons cela de plus près.

echo -e "\n${Underline}Etudions la condition if, else et fi:${Normal}\n"

read -p "Bonsoir, quel âge avez-vous ?" age

if [ ${age} -lt 18 ]; then
	echo -e "${Red}Désolé petit, interdit de rentrer${Normal}"
else
	echo -e "${Green}Bienvenue et amusez-vous bien!!${Normal}"
# ###############################################
fi
#En deuxième regardons les symboles de comparaison pour les chaines de caractères
#Nous allons directement jouer avec les conditions if, else et fi

echo -e "\n${Underline}Etudions maintenant les chaines de caractères ${Normal}"

read -p "Quel est votre prénom ? " prenom

if [ ${prenom} = "Jean" ]; then
	echo "Bonjour Mr Jean, nous vous souhaitons une bonne journée"
else
	echo "Bonjour Monsieur inconnu ..."
fi
