<h1>merlinx(Global) LineageOS installation helper.</h1>
My scripts for LineageOS installlation made in purpose to learn some bash. You can easily install LineageOS by simply following the instructions on the official <a href="https://wiki.lineageos.org/devices/merlinx/install/#" target="_blank">LineageOS installation guide</a> without any help from here.
<hr>
<ul>
  <h2>Requirements</h2>
  <li>adb.</li>
  <li>xclip.</li>
  <li>git.</li>
  <li>Unlocked Redmi Note 9(merlinx).</li>
  <li>USB debugging connected.</li>
  <li>Use USB for 'File Transfer'.</li>
</ul>
<hr>
<ol>
 <h2>Installation</h2>
<li>Clone repo.</li>
<details>
  <summary>Copy paste.</summary>
  <ol>  
  <li>

  ```bash
  cd $HOME
  ```
  </li>
  <li>

  ```bash
  git clone https://github.com/hyperavtr/merlinx-LineageOS-installation-helper.git
  ```
  </li>
  <li>

  ```bash
  cd merlinx-LineageOS-installation-helper
  ```
  </li>

  </ol>
</details>
<hr>
<li>Downgrade to Android 11.</li>
<details>
<summary>Download and extract MIUI 12.5.</summary>
<ol>
  <li><a href="https://mega.nz/file/sPM1iKhJ#wpmeRCT7auMb1mmGI7j6JPnF9vqydEjVWNgbxa86leA" target="_blank">Download MIUI 12.5 Global.</a></li>
  <br>
  <li>
    
  ```bash
  tar -xvf merlin_global_images_V12.5.4.0.RJOMIXM_20220325.0000.00_11.0_global.tar.bz2 -C ~/LineageOS
  ```
  </li>

<details>
  <summary>Make scripts executable.(Optional, just to be sure.)</summary>
<ol>
  <li>
    
  ```bash
  sudo chmod u+x 12540-miui.sh
  ```
  </li>
  <li>

  ```bash
  sudo chmod u+x boot_into_recovery.sh
  ```
  </li>
  <li>
    
  ```bash
  sudo chmod u+x merlin_global_images_V12.5.4.0.RJOMIXM_20220325.0000.00_11.0_global/flash_all.sh
  ```
  </li>
    
</ol>
</details>
<li>
  <p>Launch script & follow to the instructions.<p>
    
  ```bash
  ./12540-miui.sh  
  ```
</li>
</ol>
</details>
<hr>
<li>Download files from LineageOS official source.</li>
<details>
  <summary>Details</summary>
  <a href="https://download.lineageos.org/devices/merlinx/builds" target="_blank">Download LineageOS</a>
  <br>

<figure>
  
  ![alt text](https://github.com/hyperavtr/merlinx-LineageOS-installation-helper/blob/main/assets/images/LineageOSDownload.png?raw=true)
  <figcaption>
    <ol>
      <li>lineage-[ver.(20)-date]-nightly-merlinx-signed.zip</li>
      <li>boot.img(Optional for Magisk)</li>
      <li>recovery.img</li>
    </ol>
  </figcaption>
</figure>

<br>

<a href="https://wiki.lineageos.org/gapps/" target="_blank">Download Gapps</a>
<br>

<figure>
  
  ![alt text](https://github.com/hyperavtr/merlinx-LineageOS-installation-helper/blob/main/assets/images/Gapps.png?raw=true)
  <figcaption>
    <p>LineageOS [ver.(20)] (Android [ver.(13)]) (optional)</p>
  </figcaption>
<figure>
  
</details>
<hr>
<li>Boot into recovery mode and sideload firmware, lineageOS.zip and gapps(optionally).</li>
<details>
  <summary>Details</summary>
  <ol>
    <li>
      <p>Launch script.</p>
      
  ```bash
  ./boot_into_recovery.sh
  ```
  </li>
  <li>.lineageos installation in recovery mode: 
    <ol>
	<li>Now tap Factory Reset, then Format data / factory reset and continue with the formatting process.
	 This will remove encryption and delete all files stored in the internal storage, as well as format your cache partition (if you have one).</li>
	<li>Return to the main menu.</li>
  <li>Sideload the LineageOS .zip package but do not reboot before you read/followed the rest of the instructions!
		On the device, select “Apply Update”, then “Apply from ADB” to begin sideload.
		On the host machine, sideload the package using: 
  <ol>
    <li>
      
  ```bash
    adb -d sideload ./firmwares/fw_12540.zip 
  ```
  </li>
  <li>
    
  ```bash
    adb -d sideload lineageosname.zip.
  ```
  </li>
  <li>
    
  ```bash
    adb -d sideload mindthegapps.zip
  ```
  </li>
  </ol>
  </li>
    </ol>
</li>

  </ol>
  
</details>
<hr>
<li>Final.</li>
<details>
  <summary>Details</summary>
  <p>Once you have installed everything successfully, you can now reboot your device into the OS for the first time!</p>
  <p>Click the back arrow in the top left of the screen, then “Reboot system now”.</p>
</details>
</ol>
