#!/usr/bin/env bash

#======================================================
# Version = 1.3
# Creator = Diego Cesare <diegocesare300491@gmail.com>
# License = GPL v3
#======================================================

GetVersion(){

wget -O status https://github.com/hype-moment/PlusWall/blob/main/PlusWall/plus-wall.sh 2> /dev/null

Version=$(cat status | grep "Version = " | sed 's/.* = //g;s/<\/.*//g' | sed -n 1p)
if [[ $Version > 1.0 ]]; then
	echo -e "\e[1;32mNew version available \e[1;36m$Version\e[m\e[m\n\e[1;31mCheck the news at\e[m\nhttps://github.com/hype-moment/PlusWall"
fi

rm status 2> /dev/null
}

Menu(){
clear
GetVersion
echo -e "▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂"
echo -e ""
echo -e "\e[1;31m    ⬛\e[m     ⬛   ⬛   ⬛ \e[1;31m ⬛▀▀▀▀\e[m⬛  ⬛     ⬛"
echo -e "\e[1;31m  ⬛⬛⬛ \e[m  ⬛   ⬛   ⬛  ⬛⬛⬛⬛  ⬛     ⬛"
echo -e "\e[1;31m    ⬛\e[m     ⬛⬛⬛⬛⬛⬛  ⬛    ⬛  ⬛⬛⬛ ⬛⬛⬛"
echo -e "\e[1;31m          ━═━═━═━═━═━━═━═━═━═━═━═━═━═━═━═━═━═━═━═━\e[m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo -e "1) Animes     11) LOL            21) Doctor"
echo -e "2) Aliens     12) Nature         22) Work-Space"
echo -e "3) Cars       13) Girls      "
echo -e "4) Arch       14) Hero     "
echo -e "5) Debian     15) Dice     "
echo -e "6) Gentoo     16) FakeBlur-1"
echo -e "7) Linux      17) FakeBlur-2"
echo -e "8) Panorama   18) FakeBlur-3"
echo -e "9) Surreal    19) Time-Smile"
echo -e "10) Simple    20) Code"
echo -e "▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂"
echo -e "Restart the session for the effects to be applied."
echo -e "──────────────────────────────────────────────────────────────────────────────"
read opc

case $opc in

	1) sed -i 's/l\/.*/l\/Animes\/plus.sh \&/' ~/.profile	;;
	2) sed -i 's/l\/.*/l\/Aliens\/plus.sh \&/' ~/.profile	;;
	3) sed -i 's/l\/.*/l\/Cars\/plus.sh \&/' ~/.profile	;;
	4) sed -i 's/l\/.*/l\/Arch\/plus.sh \&/' ~/.profile	;;
	5) sed -i 's/l\/.*/l\/Debian\/plus.sh \&/' ~/.profile	;;
	6) sed -i 's/l\/.*/l\/Gentoo\/plus.sh \&/' ~/.profile	;;
	7) sed -i 's/l\/.*/l\/Linux\/plus.sh \&/' ~/.profile	;;
	8) sed -i 's/l\/.*/l\/Panorama\/plus.sh \&/' ~/.profile	;;
	9) sed -i 's/l\/.*/l\/Surreal\/plus.sh \&/' ~/.profile	;;
   10) sed -i 's/l\/.*/l\/Simple\/plus.sh \&/' ~/.profile 	;;
   11) sed -i 's/l\/.*/l\/LOL\/plus.sh \&/' ~/.profile 		;;
   12) sed -i 's/l\/.*/l\/Nature\/plus.sh \&/' ~/.profile ;;
   13) sed -i 's/l\/.*/l\/Girls\/plus.sh \&/' ~/.profile ;;
   14) sed -i 's/l\/.*/l\/Hero\/plus.sh \&/' ~/.profile ;;
   15) sed -i 's/l\/.*/l\/Dice\/Dice.sh \&/' ~/.profile ;;
   16) sed -i 's/l\/.*/l\/FakeBlur\/fakeblur.sh \&/' ~/.profile 	;;
   17) sed -i 's/l\/.*/l\/FakeBlur\/fakeblurjinx.sh \&/' ~/.profile	;;
   18) sed -i 's/l\/.*/l\/FakeBlur\/fakeblursky.sh \&/' ~/.profile	;;
   19) sed -i 's/l\/.*/l\/TimeSmile\/Smile.sh \&/' ~/.profile	;;
   20) sed -i 's/l\/.*/l\/Code\/Code.sh \&/' ~/.profile	;;
   21) sed -i 's/l\/.*/l\/Doctor\/Doctor.sh \&/' ~/.profile	;;
   22) sed -i 's/l\/.*/l\/Work\/Work.sh \&/' ~/.profile	;;
esac	
}

Menu