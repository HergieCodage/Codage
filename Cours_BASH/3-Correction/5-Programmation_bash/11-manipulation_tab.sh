#!/bin/bash

tab_animaux=("chien" "chat" "chameau")
elem=${#tab_animaux[*]}


for i in `seq 0 $(($elem-1))`
do
    echo "indice $i : ${tab_animaux[$i]}"
done

for objet in ${tab_animaux[*]}
do
    echo "$objet"
done

echo $elem
echo ${tab_animaux[*]}