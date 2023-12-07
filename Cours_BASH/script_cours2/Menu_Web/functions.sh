#!/bin/bash

#Fonction LisezMoi
function LisezMoi(){
  echo -e "${Blue}######################################${Normal}"
  echo -e "### Bienvenue sur le Script Shell ####"
  echo -e "${Blue}######################################${Normal}"
  echo "Ce script peut-être utilisé ou modifié à volonté, donné, vendu, "
  echo "faites en ce que vous voulez."
  echo "Ce script a été crée par :"
  echo ""
  echo -e " - ${Underline}Auteur${Normal}: Jean-Michel ROSEE"
  echo -e " - ${Underline}Job${Normal}: Travaille à Toulon (ciel bleu et soleil)"
  echo -e " - ${Underline}Passions:${Normal}: Informatique et d'infographie"
  echo -e " - ${Underline}Site web${Normal}: ${Blue}https://savoirpourtous.eu${Normal}"
  echo -e " - ${Underline}Chaine Youtube${Normal}: ${Blue}https://www.youtube.com/c/savoirpourtous${Normal}"
  echo ""
  echo -e "             ${Red}Bon apprentissage et vive Linux${Normal}  "
  WaitEnter
}


#Fonction wait and see
function WaitEnter() {
  echo ""
  echo -e "Veuillez taper sur la touche ${Blue}ENTREE${Normal} afin de continuer"
  read
}

#Fonction table de multiplication
function Multiply() {

  printf "${Underline}Vive les tables de multiplication${Normal}\n\n"
  read -p "Donnez un nombre entre 1 et 12 :" nombre
  printf "\n\n"
  if  [ "$nombre" -le 1 ] || [ "$nombre" -gt 12 ];then
    printf "votre valeur n'est pas bonne, ${Red}veuillez saisir une valeur comprise entre 1 et 12${Normal}!!"
  else
    printf "####### En route pour le calcul #######\n"
    #Création de la boucle
    printf " - ${Underline}Résultat de la table de: $nombre -${Normal} \n"
    for (( i = 1; i <= 10; i++ )); do
      resultat=$(($nombre*$i))
        echo ""
        printf "$nombre * $i = ${Blue}$resultat${Normal}"

    done
  fi
  echo ""
  WaitEnter
}
# Fonction Web permettant de créer une page Web
function Web() {

  echo "Et c'est parti pour la création d'une page web "
  echo "Pour cet exemple, nous allons vous demander deux valeurs numériques"
  echo ""

# Création de la variable "file" où se trouve le fichier index.html
file='index.html'


# Vérifie si le fichier index.html existe ou pas
if [[ -f $file ]]; then
  echo -e "${Underline}${Blue}Nota:${Normal} Votre fichier ${file} existe, on peut continuer\n"
else
  echo "Votre fichier ${file} n'existe pas, nous allons créer celui-ci\n"
  touch $file
fi

read -p "Donnez le nombre 1: " nombre1

# Création du bloc avec expression régulière afin de vérifier que la variable
# nombre1 saisi est un entier
if [[ ${nombre1} =~ ^[0-9]+$ ]]; then
  echo "On peut continuer, votre nombre est un entier"
else
  echo "ce n'est pas un nombre numérique, veuillez recommencer"
  exit

fi

# Création du bloc avec expression régulière afin de vérifier que la variable
# nombre2 saisi est un entier
read -p "Donnez le nombre 2: " nombre2

if [[ ${nombre2} =~ ^[0-9]+$ ]]; then
  echo "On peut continuer, votre nombre est un entier"
else
  echo "ce n'est pas un nombre numérique, veuillez recommencer"
  # Permettant de quitter le menu directement sans exécuter la suite du code
  exit
fi

echo "Appuyez sur la touche ENTREE afin de voir le résultat"
WaitEnter

# Début de la création de la page web injectée dans le fichier index.html
# Partie <head>
echo '
<!DOCTYPE html>
<html lang="fr">
<head>
  <title>Menu Web</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>' > $file
# Partie <body>
echo '<body>

<div class="jumbotron text-center">
  <h1>Bienvenu sur la page du Web et du Shell</h1>
  <p>Mélangeons le code et le graphisme</p>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-4">

      <h3>Nombre 1: <span class="badge badge-success">' >> $file
      echo ${nombre1} >> $file
      # Injection de la variable nombre1
      echo '</span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>

    <div class="col-sm-4">
      <h3>Nombre 2: <span class="badge badge-primary">' >> $file
      echo ${nombre2} >> $file
      # Injection de la variable nombre2


      echo '</span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>

    <div class="col-sm-4">
      <h3>Résultat sera : <span class="badge badge-secondary">' >> $file
      # calcul de la multplication des variables
      result=$(($nombre1*$nombre2))
      echo $result >> $file
      #
      echo '</span></h3>' >> $file
      echo '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
  </div>' >> $file

  # Exemples d'insertion de variable dans le code HTML
  echo "<p>Voici l'exemple de la valeur nombre 1:   " >> $file
  echo $nombre1  >> $file
  echo '<br></p>' >> $file

  # <p>Voici le nombre 1: </p>

  # Création de l'image par le biais des valeurs en Shell
  #  <img src="image/logo_linux.png" width="100" height="200" alt="Logo Linux" />

  echo "<h2>Création d'une image par le biais des valeurs: </h2>" >> $file
  echo '<img src="image/logo_linux.png" width="' >> $file
  echo ${nombre1} >> $file
  echo '" height="' >> $file
  echo ${Nombre2} >> $file
  echo '" alt=""/>' >> $file


# Création de de la forme rectangulaire
# <svg width="400" height="110">
#  <rect width="300" height="100" style="fill:rgb(0,0,255);stroke-width:3;stroke:rgb(0,0,0)" />
# </svg>


  # echo "<p>Et si maintenant, on dessinait un rectangle ...</p>" >> $file
  # echo "<hr>" >> $file
  # echo -n '<svg width="400" height="110"><rect width="' >> $file
  # echo -n $nombre1 >> $file
  # echo -n '" height="' >> $file
  # echo -n $nombre2 >> $file
  # echo '" style="fill:rgb(0,0,255);stroke-width:3;stroke:rgb(0,0,0)" />
  # </svg>' >> $file

echo '</div></body></html>' >> $file
# Lancement de la page web avec le browser firefox
firefox $file 2>/dev/null &
}
