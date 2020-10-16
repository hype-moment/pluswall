#!/usr/bin/env bash

#======================================================
# Version = 1.1
# Creator = Diego Cesare <diegocesare300491@gmail.com>
# License = GPL v3
#======================================================

Menu(){

clear
echo -e "▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂"
echo -e ""
echo -e "\e[1;31m    ⬛\e[m     ⬛   ⬛   ⬛ \e[1;31m ⬛▀▀▀▀\e[m⬛  ⬛     ⬛"
echo -e "\e[1;31m  ⬛⬛⬛ \e[m  ⬛   ⬛   ⬛  ⬛⬛⬛⬛  ⬛     ⬛"
echo -e "\e[1;31m    ⬛\e[m     ⬛⬛⬛⬛⬛⬛  ⬛    ⬛  ⬛⬛⬛ ⬛⬛⬛"
echo -e "\e[1;31m          ━═━═━═━═━═━━═━═━═━═━═━═━═━═━═━═━═━═━═━═━\e[m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo -e "1) Animes   6) Gentoo    11) LOL      16) FakeBlur-MX"
echo -e "2) Aliens   7) Linux     12) Nature   17) FakeBlur-Jinx"
echo -e "3) Cars     8) Panorama  13) Soon     18) FakeBlur-No Man's Sky"
echo -e "4) Arch     9) Surreal   14) Soon     19) Soon"
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
   16) sed -i 's/l\/.*/l\/FakeBlur\/fakeblur.sh \&/' ~/.profile 	;;
   17) sed -i 's/l\/.*/l\/FakeBlur\/fakeblurjinx.sh \&/' ~/.profile	;;
   18) sed -i 's/l\/.*/l\/FakeBlur\/fakeblursky.sh \&/' ~/.profile	;;
esac	
}

Menu