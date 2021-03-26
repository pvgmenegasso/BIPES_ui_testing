#!/bin/bash

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Install Dependencies from repos.txt file:

file="./repos.txt"

echo  "Welcome to the instalation of:"
echo -e "$Cyan"
echo  "╔══╗ ╔══╗╔═══╗╔═══╗╔═══╗
║╔╗║ ╚╣╠╝║╔═╗║║╔══╝║╔═╗║
║╚╝╚╗ ║║ ║╚═╝║║╚══╗║╚══╗
║╔═╗║ ║║ ║╔══╝║╔══╝╚══╗║
║╚═╝║╔╣╠╗║║   ║╚══╗║╚═╝║
╚═══╝╚══╝╚╝   ╚═══╝╚═══╝
                                    
"

echo -e "$Color_Off"

while read line; do
	echo -e "=================================================\n "
	echo -e "installing repo $Green $line $Color_Off \n "
	echo -e "=================================================\n "
	echo ""
	echo ""
	git clone $line
	
	if [ $? -ne 0 ]
	then
		echo -e "$Red ERROR $Color_Off installing repo $line \n"
		break
	fi
 
done < $file 
