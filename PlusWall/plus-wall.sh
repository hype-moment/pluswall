#!/usr/bin/env bash

#======================================================
# Version = 1.0
# Creator = Diego Cesare <diegocesare300491@gmail.com>
# License = GPL v3
#======================================================

GetVersion(){

wget -O status https://github.com/hype-moment/PlusWall/blob/main/PlusWall/plus-wall.sh 2> /dev/null

#Version=$(cat status | grep Version | sed 's/[-=#" a-z A-Z <>/;"&"(){}\$[]//g;s/.*\.//g' | sed -n 1p)
Version=$(cat status | grep "Version = " | sed 's/.* = //g;s/<\/.*//g' | sed -n 1p)
if [[ $Version > 1.0 ]]; then
	echo -e "\e[1;32mNew version available \e[1;36m$Version\e[m\e[m\n\e[1;31mCheck the news at\e[m\nhttps://github.com/hype-moment/PlusWall"
	echo -e "New category \e[1;4;31mHero\e[m"
fi

rm status 2> /dev/null
}

Menu(){
clear
GetVersion
echo -e "▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂"
echo -e ""
echo -e "\e[1;31m    ⬛\e[m     ⬛   ⬛   ⬛ \e[1;31m ⬛▀▀▀▀\e[m⬛  ⬛     ⬛"
echo -e "\e[1;31m  ⬛⬛⬛ \e[m  ⬛   ⬛   ⬛  ⬛⬛⬛⬛  ⬛     ⬛"
echo -e "\e[1;31m    ⬛\e[m     ⬛⬛⬛⬛⬛⬛  ⬛    ⬛  ⬛⬛⬛ ⬛⬛⬛"
echo -e "\e[1;31m          ━═━═━═━═━═━━═━═━═━═━═━═━═━═━═━═━═━═━═━═━\e[m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo -e "1) Animes   6) Gentoo    11) LOL      16) FakeBlur-MX"
echo -e "2) Aliens   7) Linux     12) Nature   17) FakeBlur-Jinx"
echo -e "3) Cars     8) Panorama  13) Girls    18) FakeBlur-No Man's Sky"
echo -e "4) Arch     9) Surreal   14) Hero     19) Soon"
echo -e "5) Debian  10) Simple    15) Soon     20) Soon"
echo -e "▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂"
echo -e "Restart the session for the effects to be applied."
echo -e "──────────────────────────────────────────────────────────────"
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
   16) sed -i 's/l\/.*/l\/FakeBlur\/fakeblur.sh \&/' ~/.profile 	;;
   17) sed -i 's/l\/.*/l\/FakeBlur\/fakeblurjinx.sh \&/' ~/.profile	;;
   18) sed -i 's/l\/.*/l\/FakeBlur\/fakeblursky.sh \&/' ~/.profile	;;
esac	
}

Menu