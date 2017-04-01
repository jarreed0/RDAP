#!/bin/sh

do_install()
{
	mkdir -p $HOME/.dance-reed
	cp dance-reed/program/pro.sh $HOME/.dance-reed/pro.sh
	chmod u+wx $HOME/.dance-reed/pro.sh
	cp dance-reed/desktop/dance-reed.desktop $HOME/Desktop/dance-reed.desktop
	chmod u+wx $HOME/Desktop/dance-reed.desktop
	cp dance-reed/desktop/pro.jpeg $HOME/.dance-reed/pro.jpeg
	cp dance-reed/desktop/pro.jpeg $HOME/.dance-reed/pro.jpeg
	cp dance-reed/uninstall.sh $HOME/.dance-reed/uninstall.sh
	chmod u+wx $HOME/.dance-reed/uninstall.sh
	cp dance-reed/man.txt $HOME/.dance-reed/man.txt
}

clear
cat dance-reed/licenses.txt
echo -n "Agree to licenses (y/n): "
read yes

if [ $yes = "y" ]; then
	do_install
elif [ $yes = "yes" ]; then
	do_install
else
	echo "OK exiting know..."
	sleep 1
	exit 0
fi
