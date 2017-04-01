#!/bin/sh

do_uninstall()
{
	rm $HOME/.dance-reed/*
	rmdir $HOME/.dance-reed
	rm $HOME/Desktop/dance-reed.desktop
}

clear
echo -n "Are you sure you want to uninstall (y/n): "
read yes

if [ $yes = "y" ]; then
	do_uninstall
elif [ $yes = "yes" ]; then
	do_uninstall
else
	echo "OK exiting know..."
	sleep 1
	exit 0
fi
