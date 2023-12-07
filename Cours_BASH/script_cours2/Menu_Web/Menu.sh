#!/bin/bash
. color.sh
. functions.sh
	#statements

echo `clear`

while true; do
	clear
	echo -e "${Title}                             ${Normal}"
	echo -e "${Title}           Menu              ${Normal}"
	echo -e "${Title}                             ${Normal}"
	echo -e "${Blank}                             ${Normal}"
	echo -e "${Blank} ${Normal}                           ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper 1: lisezMoi     ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper 2: calul        ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper 3: Multiplions  ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper 4: Web          ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper Q: Quitter      ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}                           ${Blank} ${Normal}"
	echo -e "${Blank}                             ${Normal}"
	echo "                             "
	read -p "Entrez votre choix: " choix
	case "$choix" in
		1) LisezMoi
			;;
		2) a=3;b=5;c=$((a+b));echo "calcul= $c";WaitEnter
			;;
		3) Multiply
			;;
		4) Web
				;;
		"q"|"Q") echo "Bonne journée et à la prochaine ...";
		WaitEnter
		  ;;
		*) echo "Mauvais choix"
	esac
	#statements
done
