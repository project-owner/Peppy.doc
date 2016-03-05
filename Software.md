The following image shows the software components required to run Peppy player. Three base layers come with Raspbian. Top two layers should be installed manually.

<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/software/software.png|alt=software]]
</p>

The details about installation and configuration of each software component will be discussed in the corresponding chapters.

###Software Tools###
Here are the main Software Tools which were used for Peppy player development:

1. **[Eclipse](https://www.eclipse.org/)**. This is IDE for Java Developers.

2. **[PyDev](http://www.pydev.org/)**. This is Python IDE for Eclipse.

3. **[PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)**. This software was used to connect to the Raspberry Pi computer through SSH.

4. **[WinSCP](https://winscp.net/eng/index.php)**. This program was necessary to copy files from Windows machine to Raspberry Pi.

5. **[Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/)**. The Raspbian OS image was placed to SD card using this program.

[<<Previous](https://github.com/project-owner/Peppy.doc/wiki/Assembling) | [Next>>](https://github.com/project-owner/Peppy.doc/wiki/Installation)

###Raspbian###
The Raspbian OS can be installed on SD flash card from several different places:

1. [Official Raspbian Web Site](https://www.raspbian.org/).
2. [HiFiBerry installer](https://www.hifiberry.com/guides/hifiberry-installer/). It can install many different distributions including Raspbian.
3. [Adafruit Web Site](https://learn.adafruit.com/adafruit-pitft-3-dot-5-touch-screen-for-raspberry-pi/easy-install).

I used the Raspbian from the Adafruit Web Site as it has all required configuration settings for the PiTFT touchscreen which I bought from the same web site. If I would use the distribution from another place I would need to make all these changes for touchscreen myself. I used Raspbian Jessie version from September 24 2015.
Free software [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/) can be used to install Raspbian image on SD flash card. I used 8GB SD flash card.

After inserting SD card and switching on Raspberry Pi I connected to it using Peppy and started configuration utility:
```
sudo raspi-config
```
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/software/rc-1.png|alt=rc-1]]
</p>
I used the following menu items from raspi-config:
* Expanded Filesystem (1) so that the whole space on the SD flash card would be available.
* Changed Boot options (3) for booting to console with autologin rather than to the desktop which is default option.
* Changed timezone settings (5)

###Python###
Python comes with Raspbian distribution therefore there is no need to install it separately. The Peppy player was written using Python syntax from version 3. But the default Python version is 2.7. So if you just start Python from command line the version 2.7 will be in use. There is the symbolic link which points to version 2.7 - /usr/bin/python. That link should point to version 3 instead. To do that run the following command:
```
sudo ln -s -f /usr/bin/python3.4 /usr/bin/python
```

###Pygame###
Pygame also comes with Raspbian. To make sure that it's really there start Python interpreter and type the following line at prompt:
```python
import pygame
```
You shouldn't see any exceptions. If you'll see import exception that means there is no Pygame and it should be downloaded and installed from their [web site](http://www.pygame.org/download.shtml).

###MPD/MPC###
The following command installs MPD player in folder /usr/bin/mpd
```
sudo apt-get install mpd
```
After MPD installation set MPD mixer type to 'software' to control volume from MPD. For that uncomment the line with mixer_type in file /etc/mpd.conf:
```
audio_output {
        type            "alsa"
        name            "My ALSA Device"
#       device          "hw:0,0"        # optional
        mixer_type      "software"      # optional
#       mixer_device    "default"       # optional
#       mixer_control   "PCM"           # optional
#       mixer_index     "0"             # optional
```
After installing MPD it's automatically configured as a service and it will start every time the Raspberry Pi starts. In order to have full control on MPD it's better to stop MPD service and disable it from starting upon system startup
```
sudo service mpd stop
sudo update-rc.d mpd disable
```
Peppy player can control MPD audio player using MPC client. To install MPC run this command:
```
sudo apt-get install mpc
```

###LIRC###
The LIRC is required if you are going to control Peppy player using Infrared Remote Control. To check that LIRC is installed on your system run the program 'irw' which comes with LIRC (this is the program for testing IR remote):
```
pi@raspberrypi ~ $ irw
-bash: irw: command not found
```
I installed Raspbian from Adafruit web site and in my case LIRC was not included into the Raspbian distro. To install LIRC run the following command:
```
sudo apt-get install lirc
``` 
This command will install LIRC libraries and it will create folder ```/etc/lirc``` with default files in it:
```
pi@raspberrypi ~ $ ls /etc/lirc
hardware.conf  lircrc  lircd.conf
```
You should prepare your own files and replace the default files. There are many tutorials in the Internet explaining how to create these files. You can use my files created for WD TV Live remote for reference:

* [hardware.conf](https://github.com/project-owner/Peppy.doc/blob/master/files/hardware.conf)
* [lircd.conf](https://github.com/project-owner/Peppy.doc/blob/master/files/lircd.conf)
* [lircrc](https://github.com/project-owner/Peppy.doc/blob/master/files/lircrc)

To test LIRC run the program 'irw' again and press buttons on your remote. You should see some output in the console:
```
pi@raspberrypi ~ $ irw
00000000219e10ef 00 KEY_OK WD_TVLIVE
00000000219ea05f 00 KEY_UP WD_TVLIVE
00000000219e00ff 00 KEY_DOWN WD_TVLIVE
```

###Pylirc###
Pylirc is LIRC Python wrapper and it's required to access LIRC from Python programs. To install Pylirc you should complete the following steps.

Install files required by pylirc:
```
sudo apt-get install python-dev
sudo apt-get install liblircclient-dev
```
Create folder
```
mkdir /home/pi/pylirc2-0.1
```
Download pylirc (pylirc2-0.1.tar.gz) from: [https://pypi.python.org/pypi/pylirc2](https://pypi.python.org/pypi/pylirc), extract files and copy them to the newly created folder ```/home/pi/pylirc2-0.1```

There is currently incompatibility between Python 3 and Pylirc. The problem was explained [here](http://stackoverflow.com/questions/34691314/python3-4-pylirc-module-not-loaded-although-is-installed-on-my-system). To fix the problem you should either follow the steps described [here](https://github.com/offlinehacker-playground/pylirc2/issues/3#issuecomment-170238377) or just download the file [pylircmodule.c](https://github.com/project-owner/Peppy.doc/blob/master/files/pylircmodule.c) which I prepared using those instructions. The file should be placed in folder ```/home/pi/pylirc2-0.1```. Then Pylirc should be recompiled and installed. Also one file should be renamed:
```
cd /home/pi/pylirc2-0.1
sudo python setup.py install
sudo mv /usr/local/lib/python3.4/dist-packages/pylircmodule.cpython-34m.so /usr/local/lib/python3.4/dist-packages/pylirc.cpython-34m.so
```
After completing all these steps you can test Pylirc by running my testing program [test-pylirc.py](https://github.com/project-owner/Peppy.doc/blob/master/files/test-pylirc.py) and pressing buttons on your IR remote control. The output in the console means that Pylirc works fine:
```
pi@raspberrypi ~ $ python test-lirc.py
['ok']
['up']
['down']
```

###Pygame###
There is no need to install Pygame as it comes pre-installed with Raspbian distro. But Raspbian Jessie has some incompatibility issues with SDL 2.x used by Pygame. That makes the touchscreen unusable. The workaround is to get SDL 1.2 from the previous Raspbian version - Wheezy. How to do that was explained [here](https://learn.adafruit.com/adafruit-2-4-pitft-hat-with-resistive-touchscreen-mini-kit/pitft-pygame-tips). Create the script [installsdl.sh](https://github.com/project-owner/Peppy.doc/blob/master/files/installsdl.sh) and run it:
```
sudo chmod +x installsdl.sh
sudo ./installsdl.sh
```

###Peppy###
Download Peppy and install it in folder ```/home/pi```. Make sure that Peppy is working:
```
cd Peppy
sudo python peppy.py
```
To start Peppy player automatically during the system startup make changes in file ```/etc/rc.local```:
```
sleep 10
cd /home/pi/Peppy/
sudo python peppy.py
```
The line ```sleep 10``` is required to let the system load network libraries before starting Peppy player. Without this delay Peppy player will not be able to start Web Server. If you don't use Web UI to control Peppy player you can delete or comment out this line. That will reduce the player startup time.

After all these changes reboot the system:
```
sudo reboot
```
The Pappy player will start automatically.

To disable all booting messages during startup remove properties ```fbcon=map:10 fbcon=font:VGA8x8``` from the end of line in file ```/boot/cmdline.txt```. The edited line should look like this one:
```
dwc_otg.lpm_enable=0 console=ttyAMA0,115200 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait
```

[<<Previous](https://github.com/project-owner/Peppy.doc/wiki/Software) | [Next>>](https://github.com/project-owner/Peppy.doc/wiki/Configuration File)


