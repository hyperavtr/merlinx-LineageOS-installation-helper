#!/bin/bash
#if you haven't flashed [12.5.4.0 miui global(android-11)] on your merlinx, you must check [12540-miui.sh] installation before this step.
#dependencies: adb dos2unix 
#requirements for script: lineageos's [recovery.img] (https://download.lineageos.org/devices/merlinx/builds).[firmware on 12.5.4.0]
#requirements optionally: [boot.img] for magisk, [lineageos-version-?.zip] for flashing from recovery, [gapps for android arm64] for google services(gps). 

echo "hello, $USER.

Let's begin the installation script of [los-recovery.img] at your device merlin|merlinx on [12.5.4.0 miui global(android-11)]

"
echo "U am checking your permissions right now...
"
sleep 1

if adb devices | grep -q 'no permissions'; then
	echo "You don't have permissions...
"	
	sleep 0.5

	echo "So, get it and start from the beginning!
	"
	echo "1.USB debugging need to be connected."
	echo "2.Use USB for 'File Transfer'."
	sleep 1
	echo "[Error]"
	exit 1
	
else
	echo "You have got all permissions, going to the fastboot mode.

	"
	adb -d reboot bootloader
	echo "-===≡≡≡┌( ͝° ͜ʖ͡°)┘
	"
	sleep 0.5
	echo "############"
	echo "############"
	echo "##FASTBOOT##"
	echo "############"
	echo "############
	

	"
	sleep 4
	if [[ $(fastboot devices | head -n1 | awk '{print $1}' | awk '{print length}') -eq 12 ]] ; then
		fastboot devices
		echo "*************************************
		"
		fastboot getvar all
		echo "*************************************
		

	"
	else 	
		echo "Fastboot do not have any devices in there."
		exit 1
	fi
fi

echo "Do you want to flash the merlinx with recovery.img?(y/n)"

input=""
until [ "$input" = "y" ] || [ "$input" = "n" ] || [ "$input" = "Y" ] || [ "$input" = "N" ] || [ "$input" = "н" ] || [ "$input" = "т" ] || [ "$input" = "Н" ] || [ "$input" = "Т" ]; do
    read -r -p "Please, enter 'y' or 'n': " input
done

case $input in
	y | Y | н | Н)
		sudo find ~ -name "recovery.img" | xclip
		"dirname $(xclip -o)" | xclip 
		"cd $(xclip -o)"
		fastboot flash recovery recovery.img
		sleep 8
		fastboot reboot recovery
		;;
	n | N | Т | т)
		echo "Reboot.
		"
		sleep 1
		fastboot reboot
		exit 1
		;;
esac
#12/01/2024 ; 17:35 
