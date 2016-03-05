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
The LIRC is required if you are going to control Peppy player using Infrared Remote Control.


[<<Previous](https://github.com/project-owner/Peppy.doc/wiki/Software) | [Next>>](https://github.com/project-owner/Peppy.doc/wiki/Configuration File)