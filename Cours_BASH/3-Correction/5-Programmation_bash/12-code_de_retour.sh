#!/bin/bash

ls
echo -e "\nla commande LS a retournee le code de retour : " $?
ls -test
echo -e "\nla commande LS -TEST a retournee le code de retour : " $?

