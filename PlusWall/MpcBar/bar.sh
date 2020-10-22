#!/bin/bash

while true; do

Bar(){
#while true; do
perc=$(mpc status | sed -n 2p | awk '{print $4}' | sed 's/[()%]//g')
for i in $perc; do 
	feh --bg-fill ~/PlusWall/Mpcbar/$i.png
	done
#done
}

status=$(mpc status | sed -n 2p | awk '{print $1}' | sed 's/\[//g;s/]//g')

if [[ $status = playing ]]; then
	Bar
else
	feh --bg-fill ~/PlusWall/Mpcbar/principal.png
fi

done