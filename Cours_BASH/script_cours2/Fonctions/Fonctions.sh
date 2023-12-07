#!/bin/bash
. color.sh
echo `clear`

#Lorsque vous faite un bout de code, il est souvent pénible de répeter
#plusieurs fois le même code d'ou l'intérêt des fonctions où l'on pourra
#passer des paramètres si besoin.


############# Création de la fonction LisezMoi #############
function LisezMoi(){
	echo -e "${Blue}######################################${Normal}"
	echo -e "### Bienvenue sur le Script Shell ####"
	echo -e "${Blue}######################################${Normal}"
	printf " Lorem ipsum dolor sit amet, consectetur adipiscing elit.
	Cras nec massa nisi. In magna purus, pulvinar auctor cursus id, accumsan
	non velit. Integer quis ex ac ante porta vestibulum. Sed congue, ipsum
	volutpat tristique lobortis, arcu sapien suscipit mi, condimentum pulvinar
	ante mauris vitae mi. Praesent tincidunt pharetra ex eu tempus. Maecenas
	sagittis tempor tristique. Ut porta augue tortor, sit amet lacinia sapien
	interdum vitae. Suspendisse eleifend maximus lacus, sed gravida lacus
	lobortis eu. Pellentesque volutpat cursus libero, eget efficitur nisl
	dapibus non. Vestibulum sollicitudin lobortis odio, at sagittis eros
	iaculis a. Curabitur luctus diam sed ex tincidunt, et interdum lorem
	ornare. Quisque laoreet ut lectus at rhoncus. Curabitur elit odio,
	ornare at molestie finibus, commodo nec massa. Quisque eros nulla,
	rhoncus at bibendum in, vestibulum ut mi. Integer dignissim sapien
	sed risus volutpat sollicitudin. Ut ac massa vitae erat vestibulum
	pulvinar.Nunc convallis commodo libero ac porttitor.
	Vestibulum viverra lacus non augue eleifend congue.
	Mauris tempus pharetra odio, vel mollis dui aliquet vitae.
	Nulla faucibus nibh eget ligula feugiat efficitur.
	In sit amet arcu ut lorem ornare suscipit. Phasellus eget porta
	lectus. Ut sodales convallis risus, in tincidunt mi tincidunt vitae.
	Duis nec leo nec ex bibendum dignissim.\n\n"
}


#Appel de la fonction LisezMoi
LisezMoi

############# Création de la fonction WaitEnter #############
function WaitEnter(){
	echo -e "Veuillez taper sur la touche ${Blue}ENTREE${Normal} afin
	de continuer"
	read
}

WaitEnter

############# Création de la fonction addition #############
addition(){
echo -e "Fonction avec passage de 2 ${Underline}paramètres${Normal}"
resultat=$(($1 + $2))
echo -e "C'est égal à: ${Green}$1${Normal} + ${Blue}$2${Normal} = ${Red}$resultat${Normal}"
echo -e "vous avez saisi ${Underline}$# paramètres${Normal}"

}
#Saisie des valeurs
echo "Saisir la première valeur:"
read val1
echo "Saisir la deuxième valeur:"
read val2

#Appel de la fonction addition
addition $val1 $val2
