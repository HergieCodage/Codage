#!/bin/bash

read -p "Valeur 1: " v1
read -p "Valeur 2: " v2 
read -p "Operateur [+/-/:/x]: " op

case $op in
    "+") echo "$(($v1 + $v2))";;
    "-") echo "$(($v1 - $v2))";;
    ":") echo "$(($v1 / $v2))";;
    "x") echo "$(($v1 * $v2))";;
    *) echo "reformulez votre choix";;
esac

