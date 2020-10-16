#!/usr/bin/env bash

GetWmName(){

num=$(wmctrl -m | grep Name | sed 's/.*: //g')

if [[ $num == herbstluftwm ]]; then
#### Get workspace herbstluftwm
herbstclient list_monitors | awk '{print $5}' | sed 's/"//g'
elif [[ $num == i3 ]]; then
### Get workspace i3
i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name'| cut -d"\"" -f2
elif [[ $num == bspwm ]]; then
### Get workspace bspwm
bspc query -D -d focused --names
fi
}

while true; do

GetWmName

# Options

case $(GetWmName) in

I|1) feh --bg-fill ~/PlusWall/Surreal/0.png 	;;
II|2) feh --bg-fill ~/PlusWall/Surreal/1.png 	;;
III|3) feh --bg-fill ~/PlusWall/Surreal/2.png 	;;
IV|4) feh --bg-fill ~/PlusWall/Surreal/3.png 	;;
V|5) feh --bg-fill ~/PlusWall/Surreal/4.png	;;
VI|6) feh --bg-fill ~/PlusWall/Surreal/5.png	;;
VII|7) feh --bg-fill ~/PlusWall/Surreal/6.png	;;
VIII|8) feh --bg-fill ~/PlusWall/Surreal/7.png	;;
IX|9) feh --bg-fill ~/PlusWall/Surreal/8.png	;;
X|10) feh --bg-fill ~/PlusWall/Surreal/9.png 	;;

esac

done