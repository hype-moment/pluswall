#!/usr/bin/env bash

#==============================================================
# name: PlusWall
# version: 1.0
# author: Diego Cesare <diegocesare30049@gmail.com>
# describe: Changes the background dynamically
# license: GNU GPLv3
#
# About the project
# =================
# This script is only intended to change desktop backgrounds,
# but it does it dynamically and automatically.
# The backgrounds are divided into categories,
# each responsible for a different package of images,
# some have the function of changing the plan of each desktop,
# others the function of blurring the background image as
# soon as a window is opened,
# and others to change the background as the day progresses.
#==============================================================

Menu(){

clear
echo -e "▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂"
echo -e ""
echo -e "\e[1;31m    ⬛\e[m     ⬛   ⬛   ⬛ \e[1;31m ⬛▀▀▀▀\e[m⬛  ⬛     ⬛"
echo -e "\e[1;31m  ⬛⬛⬛ \e[m  ⬛   ⬛   ⬛  ⬛⬛⬛⬛  ⬛     ⬛"
echo -e "\e[1;31m    ⬛\e[m     ⬛⬛⬛⬛⬛⬛  ⬛    ⬛  ⬛⬛⬛ ⬛⬛⬛"
echo -e "\e[1;31m          ━═━═━═━═━═━━═━═━═━═━═━═━═━═━═━═━═━═━═━═━\e[m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo -e "1) Animes    6) Gentoo   11) LOL   16)FakeBlur-MX"
echo -e "2) Aliens    7) Linux              17)FakeBlur-Jinx"
echo -e "3) Animals   8) Panorama"
echo -e "4) Arch      9) Surreal"
echo -e "5) Debian   10) Simple"
echo -e "▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂"
echo -e "Restart the session for the effects to be applied."
echo -e "───────────────────────────────────────────────────"
read opc

case $opc in

	1) sed -i 's/l\/.*/l\/Animes\/plus.sh \&/' ~/.profile	;;
	2) sed -i 's/l\/.*/l\/Aliens\/workpapel.sh \&/' ~/.profile	;;
	3)	;;
	4) sed -i 's/l\/.*/l\/Arch\/plus.sh \&/' ~/.profile	;;
	5) sed -i 's/l\/.*/l\/Debian\/plus.sh \&/' ~/.profile	;;
	6) sed -i 's/l\/.*/l\/Gentoo\/plus.sh \&/' ~/.profile	;;
	7) sed -i 's/l\/.*/l\/Linux\/plus.sh \&/' ~/.profile	;;
	8) sed -i 's/l\/.*/l\/Panorama\/plus.sh \&/' ~/.profile	;;
	9) sed -i 's/l\/.*/l\/Surreal\/plus.sh \&/' ~/.profile	;;
   10) sed -i 's/l\/.*/l\/Simple\/plus.sh \&/' ~/.profile 	;;
   11) sed -i 's/l\/.*/l\/LOL\/plus.sh \&/' ~/.profile 		;;
   16) sed -i 's/l\/.*/l\/FakeBlur\/fakeblur.sh \&/' ~/.profile 	;;
   17) sed -i 's/l\/.*/l\/FakeBlur\/fakeblurjinx.sh \&/' ~/.profile	;;
esac	
}

Menu