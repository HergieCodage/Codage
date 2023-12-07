#!/bin/bash
#nombre1=5 #Variable
#fonctions : let=opération (entier)  
#let "nombre1=nombre1+3" 
#	echo $nombre1
	
#nombre2=5	
#let "nombre2=nombre2-3"
#	echo $nombre2

#nombre3=5
#let "nombre3=nombre3*2"
#	echo $nombre3

#nombre4=5
#let "mod4=nombre4%2"
#let "nombre4=nombre4/2"
#	echo "le résultat de cette opération est $nombre4 avec un restant de $mod4"

#fonction : random=renvoie un entier dif à chaque appel [0<RANDOM>32 777]
#nombre5=$RANDOM
#10<nombre5>110
#let "nombre5=nombre5%100+10" 
#	echo $nombre5

nombre5=$RANDOM
let "nombre5=nombre5%100"
if [ $nombre5 -ge 0 ] && [ $nombre5 -lt 10 ]
then
	let "nombre5=nombre5+10"
elif [ $nombre5 -gt 100 ] && [ $nombre5 -le 110 ]
then
	let "nombre5=nombre5-10"	
fi
