# PlusWall

![alt text](https://github.com/hype-moment/PlusWall/blob/main/Readme-image/pluswall.png)

# Presentation

 This project is a pass of my free time.
 I started without any pretension besides making my window managers more dynamic,
with the time I was enjoying the result, and I decided to go up to git, 
so that anyone interested can also use it of it and modify it and also distribute it.

# How does it work

 The program uses the "feh" as the engine, 
it will do all the work of keeping the backgrounds in place.
It will take the option chosen by the user to perform the task.
 Then the script will use the user's choice to modify the user's ".profile",
so that it starts with the system according to the chosen option.

# The use of ".profile"

 The ".profile" has the function of starting programs when logging into the system,
so I found this way a better way to start the program,
as it is being designed to be used in several window managers,
send so it would not be necessary to program to run inside the
configuration files of each window manager, and this type of configuration
would generate in some cases the increase in CPU usage, because in most window managers
when making a change in the settings, it is necessary to restore the system,
this would "in some cases" cause the program to start again thus generating
processes and more processes, this does not happen with ".profile",
as it starts only once, and can be used in all window managers.

# How to change the display order of the screens

 The program was built for simple and easy to modify.
 
 It is divided into folders and each folder has its own configuration file,
thus making each option configurable independently, without modifying the others,
making the probability of errors minimal.
 
 If you don't like the order in which images are displayed, you can easily change that.
 
 The images are arranged from (0 to 9) with 0 being the first working area and 9 being the last.
Assuming you want to put the eighth image on the first screen, 
just change the order inside the "case" 
by placing the image (8.png) in the first option and the image (0.png) in the eighth position.
 
 If you have a favorite image and would like to use it,
you should know which screen you would like it to be on,
so you should rename or delete the original image and copy
your own to the desired directory renamed 
with the name that represents the position she should be in.

# Dependencies

Because it is designed for more than one window manager,
the program requires some dependencies for it to work correctly.
Are they

		feh 
		xdotool
		jq
		wmctrl

You need to install the packages (feh, xdotool, wmctrl and jq)

# Instalation

The installation of the program is very simple.

1) Clone the repository within your (home)
		
		 git clone https://github.com/hype-moment/PlusWall.git

2) Give the command at the terminal

		 echo "sh ~/PlusWall/Aliens/plus.sh &" >> ~/.profile

This command will create the ".profile" 
file in your home if it doesn't exist, if it already exists,
the command will create the responsible line so that everything goes smoothly.

# Use

You can run the command directly on the terminal

		sh ~/PlusWall/plus-wall.sh

To make the process faster, you can create an alias in your .bashrc or .zshrc

		alias pluswall="sh ~/PlusWall/plus-wall.sh"

with this alias, just give the command (pluswall) that the program will open.

You can change (pluswall) to any other name you want.

# Animes

![alt text](https://github.com/hype-moment/PlusWall/blob/main/Readme-image/Animes.png)

# Aliens 

![alt text](https://github.com/hype-moment/PlusWall/blob/main/Readme-image/Aliens.png)