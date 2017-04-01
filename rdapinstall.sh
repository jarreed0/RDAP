#!/bin/sh

if [ $1 = "-i" ]; then
	tar -xvf $2
	dir=`basename $2 .rdap`
	$dir/install.sh
elif [ $1 = "-u" ]; then
        dir=`basename $2 .rdap`
	$HOME/.$dir/uninstall.sh
elif [ $1 = "-b" ]; then
	echo "$2 is directory name"
	echo -n "What is the software name: "
	read name
	echo -n "What is the develpername: "
	read develp
	file=`echo $name"-"$develp`
	echo "File will be called $file"
	tar cf $file.rdap $2
elif [ $1 = "-f" ]; then
        dir=`basename $2 .rdap`
	echo "Licenses:"
	cat $dir/licenses.txt
	echo "Info/About"
	cat $dir/about.txt
elif [ $1 = "-m" ]; then
	dir=`basename $2 .rdap`
	echo "Manual: "
	cat $HOME/.$dir/man.txt
elif [ $1 = "-ls" ]; then
	tar tf $2
elif [ $1 = "-r" ]; then
	echo "Requirements:"
	echo "Follow this in order for everything to work."
	echo "When entering file name, if it is not located in rdapinstall directory, then right location of .rdap file"
	echo "Not just its name."
	echo "This should be able to work from anywhere with any .rdap file."
elif [ $1 = "-d" ]; then
	echo "Directions on HowTo build."
	echo "Make a directory with program"
	echo "Have a file called install.sh that installs or directs to what file installs."
	echo "	In install.sh file have it create a directory called /home/USER/.NAMEwithoutrdap(with . infront of it for hidden)"
	echo "	Put anything needed in here and put uninstall.sh in there."
	echo "	Put man.txt there and about.txt there."
	echo "Have a file called uninstall.sh that uninstalls or directs to what file uninstalls."
	echo "Have a file called about.txt that tells what the software does."
	echo "Have a file called licenses.txt that has a licenses on it."
	echo "In install.sh have it display licenses and agree before it is installed."
	echo "Have a man.txt that has a manual on how to use the program and where it can be run."
	echo "If wanted have a directory called program:"
	echo "	Have main program in here."
	echo "If wanted habe a directory called desktop:"
	echo "	Have desktop .desktop files in here and other desktop information such as .desktop logo."
	echo "If wanted have a directory called photo:"
	echo "	Have photos in here."
	echo "	They can in subdirectories catagrized by there size/etc."
elif [ $1 = "--" ]; then
	echo "Directions on HowTo use."
	echo "for install, uninstalling or doing anything to an existing file use:"
	echo "	rdapinstall -(i, u, ls, m) FILENAME.rdap"
	echo "for making a .rdap file use:"
	echo "	rdapinstall -b DIRNAME"
	echo "for viewing things that do not need a file use:"
	echo "	rdapinstall -(-, r, d)"
elif [ $1 = "-h" ]; then
	echo "-i to install"
	echo "-u to uninstall"
	echo "-ls to list files in .rdap file"
	echo "-m for manual"
	echo "-r for requirements"
	echo "-b for build"
	echo "-d for directions on how to build"
	echo "-- for directions on how to use"
else
	echo "Enter -h for help and commands."
fi
