#!/bin/bash

#Création d'une variable en local avec la commande "local"

#Gestion de la fonction Ouverture
function Ouverture(){
  local app
  read -p "Quelle application voulez-vous lancer ? " app
  ${app} &
  WaitEnter

}
#Gestion de la fonction Delete
function Delete(){
  local app
  read -p "Quelle application voulez-vous supprimer ?" app
  #Recherche du pattern ou PID, PPID par la commande ci-dessous.
  #La commande awk va permettre en autre de récupérer la deuxième colonne
  Result=`ps fux | grep -i ${app} | grep -v grep | awk '{print $2}' | sort -r`
  #echo $Result
  if [ "X$Result" = "X" ]
	then
  		echo " pas de logiciel à supprimer"
  	else
		 echo "Suppression de l'application ${app}"
     #La commande kill -9 va permettre de forcer l'arrêt du processus,
     #ensuite le reste du message est envoté dans la corbeille d'où le /dev/null
		 kill -9  ${Result} > /dev/null 2>&1
  fi

  WaitEnter

}

function Affichage(){
 local app
 read -p "Quel processus voulez-vous voir ? " app
 echo -e "${Underline}Voici le ou les processus sur ${app}:${Normal}"
 echo ""
#J'affiche le ou les processus par rapport à la variable app
 ps fux | grep -v grep | grep -i ${app}
#si le retour de commande est égal à 1, alors aucun processus ne peut être affiché
 Result=`echo $?`
 #echo $Result
 if [ $Result == 1 ]
 then
 #echo "Aucun processus qui porte ce nom, essayez autre chose"

 echo -e "${Red}#####################################################"
 echo -e "${Red}Aucun processus qui porte ce nom, essayez autre chose"
 echo -e "${Red}#####################################################${Normal}"

 fi
  WaitEnter
}



#Fonction wait and see
function WaitEnter(){
  echo ""
  echo -e "Veuillez taper sur la touche ${Blue}ENTREE${Normal} afin de continuer"
  read
 echo `clear`
}
