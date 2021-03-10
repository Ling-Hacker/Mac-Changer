#!/bin/bash

cardname="wlp3s0"

function mudarMac ()
{
	sudo ifconfig $cardname down
	sudo ifconfig $cardname hw ether $1
	sudo ifconfig $cardname up
	echo "Your new mac $1 has been set up on Network Card $cardname"
}

echo "Enter option:"
echo "1- New mac address."
echo "2- Mac list."
read opcao

if [ $opcao -eq 1 ]; then
	echo "Enter the new MAC:"
	read mac

	mudarMac $mac
fi

if [ $opcao -eq 2 ]; then
	echo "Choose the mac:"
	echo "1(Mac House)- 00:11:22:33:44:55"
	echo "2(Mac Work)- 00:A1:B2:C3:D4:E5"
	echo "3(Mac college)- 19:28:37:46:55:99"
	read macescolhido

	case $macescolhido in
	1) mac="001122334455" ;;
	2) mac="00A1B2C3D4E5" ;;
	3) mac="192837465599" ;;
	*) mac="001122334455" ;;
	esac

	mudarMac $mac
fi

