#!/bin/bash
basedir=`dirname $0`


DEMO="JJBoss Fuse Quartz and FTP Demo"
AUTHORS="Christina Lin"
SRC_DIR=$basedir/installs

FUSE_INSTALL=jboss-fuse-full-6.2.0.redhat-133.zip


SOFTWARE=($FUSE_INSTALL $JDG_INSTALL)


# wipe screen.
clear 

echo

ASCII_WIDTH=46
printf "##  %-${ASCII_WIDTH}s  ##\n" | sed -e 's/ /#/g'
printf "##  %-${ASCII_WIDTH}s  ##\n"
printf "##  %-${ASCII_WIDTH}s  ##\n" "Setting up the ${DEMO}"
printf "##  %-${ASCII_WIDTH}s  ##\n"
printf "##  %-${ASCII_WIDTH}s  ##\n"
printf "##  %-${ASCII_WIDTH}s  ##\n" "#### #  #  ### ####"
printf "##  %-${ASCII_WIDTH}s  ##\n" "#    #  # #    #"
printf "##  %-${ASCII_WIDTH}s  ##\n" "###  #  # #### ####"
printf "##  %-${ASCII_WIDTH}s  ##\n" "#    #  #    # #"
printf "##  %-${ASCII_WIDTH}s  ##\n" "#    #### ###  ####"  
printf "##  %-${ASCII_WIDTH}s  ##\n"
printf "##  %-${ASCII_WIDTH}s  ##\n"
printf "##  %-${ASCII_WIDTH}s  ##\n"
printf "##  %-${ASCII_WIDTH}s  ##\n" "brought to you by,"
printf "##  %-${ASCII_WIDTH}s  ##\n" "${AUTHORS}"
printf "##  %-${ASCII_WIDTH}s  ##\n"
printf "##  %-${ASCII_WIDTH}s  ##\n"
printf "##  %-${ASCII_WIDTH}s  ##\n" | sed -e 's/ /#/g'

echo
echo "Cleaning up the ${DEMO} environment..."
echo

#If fuse is running stop it
echo "  - stopping any running fuse instances"
echo
jps -lm | grep karaf | grep -v grep | awk '{print $1}' | xargs kill -KILL

sleep 2 

echo


# If target directory exists remove it
if [ -x projects/demojobfragh2/target ]; then
		echo "  - deleting existing demojobfragh2 project target directory..."
		echo
		rm -rf projects/demojobfragh2/target
fi

# If target directory exists remove it
if [ -x projects/demojobh2/target ]; then
		echo "  - deleting existing demojobh2 project target directory..."
		echo
		rm -rf projects/demojobh2/target
fi

# If target directory exists remove it
if [ -x projects/demojobprint/target ]; then
		echo "  - deleting existing demojobprint project target directory..."
		echo
		rm -rf projects/demojobprint/target
fi

# If target directory exists remove it
if [ -x target ]; then
		echo "  - deleting existing target directory..."
		echo
		rm -rf target
fi
