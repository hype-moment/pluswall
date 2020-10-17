#!/usr/bin/env bash

while true; do

# Get active window
tag=$(xdotool getactivewindow getwindowname)

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/FakeBlur/4.png
else
	feh --bg-fill ~/PlusWall/FakeBlur/5.png
fi

done