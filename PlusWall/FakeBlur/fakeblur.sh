#!/usr/bin/env bash

while true; do

# Get active window
tag=$(xdotool getactivewindow getwindowname) 

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/FakeBlur/1.png
else
	feh --bg-fill ~/PlusWall/FakeBlur/0.png
fi

done
