#if you haven't flashed [12.5.4.0 miui global(android-11)] on your merlinx, you must check [12540-miui.sh] installation before this step.
#dependencies: adb, xclip; 
#requirements for script: lineageos's [recovery.img] (https://download.lineageos.org/devices/merlinx/builds).[firmware on 12.5.4.0](already in recovery script folder)
#optional requirements: [boot.img] for magisk, [lineageos-version-?.zip] to flash from recovery, [gapps for android arm64] for google services(gps).


1.RENAME recovery.img INTO los-recovery.img in your folder!!!
2.use script
3.lineageos installation in recovery mode: 
	1)Now tap Factory Reset, then Format data / factory reset and continue with the formatting process.
	 This will remove encryption and delete all files stored in the internal storage, as well as format your cache partition (if you have one).
	2)Return to the main menu.
	3)Sideload the LineageOS .zip package but do not reboot before you read/followed the rest of the instructions!
		On the device, select “Apply Update”, then “Apply from ADB” to begin sideload.
		On the host machine, sideload the package using: adb -d sideload lineageosname.zip.

4.gapps installation:
	1)Click Apply Update, then Apply from ADB, then adb -d sideload gappsname.zip for all desired packages in sequence.

