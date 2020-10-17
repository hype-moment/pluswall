#!/usr/bin/env bash

GetWmName(){

num=$(wmctrl -m | grep Name | sed 's/.*: //g')

#### Get workspace herbstluftwm
if [[ "$num" == herbstluftwm ]]; then
wmctrl -d | grep '*' | awk '{print $1 $2}' | sed 's/*/-/'
### Get workspace i3
elif [[ $num == i3 ]]; then
i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name'| cut -d"\"" -f2
### Get workspace bspwm
elif [[ $num == bspwm ]]; then
bspc query -D -d focused --names
### Get workspace qtile
elif [[ $num == LG3D ]]; then
wmctrl -d | grep '*' | awk '{print $1 $2}' | sed 's/*/-/'
### Get workspace openbox
elif [[ $num == Openbox ]]; then
wmctrl -d | grep '*' | awk '{print $1 $2}' | sed 's/*/-/'
### Get workspace fluxbox
elif [[ $num == Fluxbox ]]; then
wmctrl -d | grep '*' | awk '{print $1 $2}' | sed 's/*/-/'
### Get workspace jwm
elif [[ $num == JWM ]]; then
wmctrl -d | grep '*' | awk '{print $1 $2}' | sed 's/*/-/'
### Get workspace pekwm
elif [[ $num == pekwm ]]; then
wmctrl -d | grep '*' | awk '{print $1 $2}' | sed 's/*/-/'
fi
}

while true; do

GetWmName

# Options

case $(GetWmName) in

0-|I|1) feh --bg-fill ~/PlusWall/Hero/0.png 	;;
1-|II|2) feh --bg-fill ~/PlusWall/Hero/1.png 	;;
2-|III|3) feh --bg-fill ~/PlusWall/Hero/2.png 	;;
3-|IV|4) feh --bg-fill ~/PlusWall/Hero/3.png 	;;
4-|V|5) feh --bg-fill ~/PlusWall/Hero/4.png	;;
5-|VI|6) feh --bg-fill ~/PlusWall/Hero/5.png	;;
6-|VII|7) feh --bg-fill ~/PlusWall/Hero/6.png	;;
7-|VIII|8) feh --bg-fill ~/PlusWall/Hero/7.png	;;
8-|IX|9) feh --bg-fill ~/PlusWall/Hero/8.png	;;
9-|X|10) feh --bg-fill ~/PlusWall/Hero/9.png 	;;

esac

done