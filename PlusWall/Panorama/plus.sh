#!/usr/bin/env bash

GetWmName(){

num=$(wmctrl -m | grep Name | sed 's/.*: //g')

#### Get workspace herbstluftwm
if [[ $num == herbstluftwm ]]; then
herbstclient list_monitors | awk '{print $5}' | sed 's/"//g'
### Get workspace i3
elif [[ $num == i3 ]]; then
i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name'| cut -d"\"" -f2
### Get workspace bspwm
elif [[ $num == bspwm ]]; then
bspc query -D -d focused --names
### Get workspace qtile
elif [[ $num == LG3D ]]; then
wmctrl -d | grep '*' | awk '{print $1 $2}' | sed 's/*/0/'
### Get workspace openbox
elif [[ $num == Openbox ]]; then
wmctrl -d | grep '*' | awk '{print $1 $2}' | sed 's/*/0/'
### Get workspace fluxbox
elif [[ $num == Fluxbox ]]; then
wmctrl -d | grep '*' | awk '{print $1 $2}' | sed 's/*/0/'
### Get workspace jwm
elif [[ $num == JWM ]]; then
wmctrl -d | grep '*' | awk '{print $1 $2}' | sed 's/*/0/'
### Get workspace pekwm
elif [[ $num == pekwm ]]; then
wmctrl -d | grep '*' | awk '{print $1 $2}' | sed 's/*/0/'
fi
}

while true; do

GetWmName

# Options

case $(GetWmName) in

00|I|1) feh --bg-fill ~/PlusWall/Panorama/0.png 	;;
10|II|2) feh --bg-fill ~/PlusWall/Panorama/1.png 	;;
20|III|3) feh --bg-fill ~/PlusWall/Panorama/2.png 	;;
30|IV|4) feh --bg-fill ~/PlusWall/Panorama/3.png 	;;
40|V|5) feh --bg-fill ~/PlusWall/Panorama/4.png	;;
50|VI|6) feh --bg-fill ~/PlusWall/Panorama/5.png	;;
60|VII|7) feh --bg-fill ~/PlusWall/Panorama/6.png	;;
70|VIII|8) feh --bg-fill ~/PlusWall/Panorama/7.png	;;
80|IX|9) feh --bg-fill ~/PlusWall/Panorama/8.png	;;
90|X|10) feh --bg-fill ~/PlusWall/Panorama/9.png 	;;

esac

done