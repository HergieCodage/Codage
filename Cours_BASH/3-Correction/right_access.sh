#!/bin/bash
apt install acl -y > /dev/null 2>&1
umask 0007 #drwxrwx---
mkdir /home/administratif
touch /home/administratif/test.txt
mkdir /home/administratif/stagiaire
touch /home/administratif/stagiaire/test.txt
mkdir /home/comptabilite
touch /home/comptabilite/test.txt
mkdir /home/public
touch /home/public/test.txt

#Create group/user
groupadd admin
groupadd compta
groupadd info
useradd toto -s /bin/bash -m
useradd titi -s /bin/bash -m -G admin
useradd stagiaire -s /bin/bash -m
useradd tutu -s /bin/bash -m -G compta
useradd jack -s /bin/bash -m -G info #or sudo ?

#verify with id or groups or conf files

#Right access
#Le personnel administratif aura accès au dossier/home/administratif et son contenu
chown -R root:admin /home/administratif
#Le personnel comptable aura accès au dossier /home/comptabilite et son contenu
chown -R root:compta /home/comptabilite
#Le dossier /home/public est accessible à tous les employés
#setfacl -dm o::rwX /home/public
chmod o+rwx /home/public
chmod -R o+rw /home/public
#Le personnel informatique aura accès à tous les dossiers
setfacl -Rm g:info:rwX /home/administratif/
setfacl -Rm g:info:rwX /home/comptabilite/
#L’utilisateur stagiaire aura l’accès au dossier /home/administratif/stagiaire mais pas /home/administratif
setfacl -m u:stagiaire:X /home/administratif
setfacl -Rm u:stagiaire:rwX /home/administratif/stagiaire
#Les fichiers présents dans les dossiers partagés appartiendront au groupe
chmod g+s /home/administratif
chmod g+s /home/comptabilite
#Les utilisateurs ne pourront supprimer que leurs propres documents
chmod o+t /home/administratif
chmod o+t /home/administratif/stagiaire
chmod o+t /home/comptabilite
chmod o+t /home/public
