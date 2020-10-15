#!/usr/bin/env bash

while true; do

### If you use the herbstluftwm window manager,
### then uncomment the option below and commit the others,
### if they are uncommented
### Get workspace herbstluftwm
tag=$(herbstclient list_monitors | awk '{print $5}' | sed 's/"//g')

### If you use the i3wm window manager,
### then uncomment the option below and commit the others,
### if they are uncommented
### Get workspace i3
# tag=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name' | cut -d"\"" -f2)


# Options

case $tag in

1) feh --bg-fill ~/PlusWall/Gentoo/0.png 	;;
2) feh --bg-fill ~/PlusWall/Gentoo/1.png 	;;
3) feh --bg-fill ~/PlusWall/Gentoo/2.png 	;;
4) feh --bg-fill ~/PlusWall/Gentoo/3.png 	;;
5) feh --bg-fill ~/PlusWall/Gentoo/4.png	;;
6) feh --bg-fill ~/PlusWall/Gentoo/5.png	;;
7) feh --bg-fill ~/PlusWall/Gentoo/6.png	;;
8) feh --bg-fill ~/PlusWall/Gentoo/7.png	;;
9) feh --bg-fill ~/PlusWall/Gentoo/8.png	;;
10) feh --bg-fill ~/PlusWall/Gentoo/9.png 	;;

esac

done