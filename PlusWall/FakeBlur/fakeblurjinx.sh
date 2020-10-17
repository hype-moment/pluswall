#!/usr/bin/env bash

while true; do

# Get active window
tag=$(xdotool getactivewindow getwindowname)

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/FakeBlur/2.png
else
	feh --bg-fill ~/PlusWall/FakeBlur/3.png
fi

done
