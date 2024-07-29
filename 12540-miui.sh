#!/bin/bash
#dependencies: clipx adb (dos2unix)
#needed to be extracted: merlin_global_images_V12.5.4.0.RJOMIXM_20220325.0000.00_11.0_global_ddab954d67.tgz

echo "Hello, $USER.

Let's begin the installation script of [12.5.4.0 miui global(android-11)] at your device merlin|merlinx!
"
echo "I'm checking your permissions right now...
"
sleep 1

if adb devices | grep -q 'no permissions'; then
	echo "You don't have all the necessary permissions...
	"	
	sleep 0.5

	echo "So, you need to get it and restart the script!
	"
	echo "1. USB debugging need to be connected."
	echo "2. Use USB for 'File Transfer'."
	sleep 1
	echo "[Error]"
	exit 1
	
else
	echo "You've got all permissions, going to the fastboot mode.

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
		echo "Fastboot don't have any devices in there."
		exit 1
	fi
fi

echo " Do you want to flash your merlinx with 12.5.4.0-miui?(y/n)"


input=""
until [ "$input" = "y" ] || [ "$input" = "n" ] || [ "$input" = "Y" ] || [ "$input" = "N" ] || [ "$input" = "н" ] || [ "$input" = "т" ] || [ "$input" = "Н" ] || [ "$input" = "Т" ]; do
    read -r -p "Please, enter 'y' or 'n': " input
done


case $input in
	y | Y | н | Н)
		sudo find ~ -name "flash_all.sh" | xclip
		"dirname $(xclip -o)" | xclip
		"cd $(xclip -o)"
	    ./flash_all.sh
		;;
	n | N | Т | т)
		echo "Reboot.
		"
		sleep 1
		fastboot reboot
		exit 1
		;;
esac
#12/01/2024 ; 16:35
