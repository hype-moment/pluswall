#!/bin/bash

while true; do

tag=$(herbstclient get_attr clients.focus.class | wc -l) # Get window herbstluftw
tag=$(xdotool getactivewindow getwindowname) 			 # Get window i3-gaps

if [[ $tag > 0 ]]; then
	feh --bg-fill ~/PlusWall/FakeBlur/4.png
else
	feh --bg-fill ~/PlusWall/FakeBlur/5.png
fi

done