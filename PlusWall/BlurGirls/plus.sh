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

Zero(){

# Get active window
tag=$(xdotool getactivewindow getwindowname | wc -l) 

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/BlurGirls/00.png
else
	feh --bg-fill ~/PlusWall/BlurGirls/0.png
fi

}

One(){

# Get active window
tag=$(xdotool getactivewindow getwindowname | wc -l) 

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/BlurGirls/01.png
else
	feh --bg-fill ~/PlusWall/BlurGirls/1.png
fi

}

Two(){

# Get active window
tag=$(xdotool getactivewindow getwindowname | wc -l) 

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/BlurGirls/02.png
else
	feh --bg-fill ~/PlusWall/BlurGirls/2.png
fi

}

Tree(){

# Get active window
tag=$(xdotool getactivewindow getwindowname | wc -l) 

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/BlurGirls/03.png
else
	feh --bg-fill ~/PlusWall/BlurGirls/3.png
fi

}

Four(){

# Get active window
tag=$(xdotool getactivewindow getwindowname | wc -l) 

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/BlurGirls/04.png
else
	feh --bg-fill ~/PlusWall/BlurGirls/4.png
fi

}

Five(){

# Get active window
tag=$(xdotool getactivewindow getwindowname | wc -l) 

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/BlurGirls/05.png
else
	feh --bg-fill ~/PlusWall/BlurGirls/5.png
fi

}

Six(){

# Get active window
tag=$(xdotool getactivewindow getwindowname | wc -l) 

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/BlurGirls/06.png
else
	feh --bg-fill ~/PlusWall/BlurGirls/6.png
fi

}

Seven(){

# Get active window
tag=$(xdotool getactivewindow getwindowname | wc -l) 

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/BlurGirls/07.png
else
	feh --bg-fill ~/PlusWall/BlurGirls/7.png
fi

}

Eight(){

# Get active window
tag=$(xdotool getactivewindow getwindowname | wc -l) 

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/BlurGirls/08.png
else
	feh --bg-fill ~/PlusWall/BlurGirls/8.png
fi

}

Nine(){

# Get active window
tag=$(xdotool getactivewindow getwindowname | wc -l) 

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/BlurGirls/09.png
else
	feh --bg-fill ~/PlusWall/BlurGirls/9.png
fi

}

while true; do

GetWmName

# Options

case $(GetWmName) in

0-|I|1) Zero	;;
1-|II|2) One	;;
2-|III|3) Two feh	;;
3-|IV|4) Tree feh 	;;
4-|V|5) Four feh	;;
5-|VI|6) Five feh	;;
6-|VII|7) Six feh	;;
7-|VIII|8) Seven feh	;;
8-|IX|9) Eight feh	;;
9-|X|10) Nine	;;

esac

done