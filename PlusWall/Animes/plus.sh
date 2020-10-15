#!/usr/bin/env bash

while true; do

#### Get workspace herbstluftwm
tag=$(herbstclient list_monitors | awk '{print $5}' | sed 's/"//g')

### Get workspace i3
#tag=$(i3-msg -t get_workspaces \
#  | jq '.[] | select(.focused==true).name' \
#  | cut -d"\"" -f2)

# Options

case $tag in

1) feh --bg-fill ~/PlusWall/Animes/0.png 	;;
2) feh --bg-fill ~/PlusWall/Animes/1.png 	;;
3) feh --bg-fill ~/PlusWall/Animes/2.png 	;;
4) feh --bg-fill ~/PlusWall/Animes/3.png 	;;
5) feh --bg-fill ~/PlusWall/Animes/4.png	;;
6) feh --bg-fill ~/PlusWall/Animes/5.png	;;
7) feh --bg-fill ~/PlusWall/Animes/6.png	;;
8) feh --bg-fill ~/PlusWall/Animes/7.png	;;
9) feh --bg-fill ~/PlusWall/Animes/8.png	;;
10) feh --bg-fill ~/PlusWall/Animes/9.png 	;;

esac

done