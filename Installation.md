###Raspbian###
The Raspbian OS can be installed on SD flash card from several different places:

1. [Official Raspbian Web Site](https://www.raspbian.org/).
2. [HiFiBerry installer](https://www.hifiberry.com/guides/hifiberry-installer/). It can install many different distributions including Raspbian.
3. [Adafruit Web Site](https://learn.adafruit.com/adafruit-pitft-3-dot-5-touch-screen-for-raspberry-pi/easy-install).

I used the Raspbian from the Adafruit Web Site as it has all required configuration settings for the PiTFT touchscreen which I bought from the same web site. If I would use the distribution from another place I would need to make all these changes for touchscreen myself. I used Raspbian Jessie version from September 24 2015.
Free software [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/) can be used to install Raspbian image on SD flash card. I used 8GB SD flash card.

###Python###
Python comes with Raspbian distribution therefore there is no need to install it separately. The default Python version is 2.7. The configuration chapter will explain how to switch to Python version 3 which is required version for the Peppy player.

###Pygame###
Pygame also comes with Raspbian. To make sure that it's really there start Python interpreter and type the following line at prompt:

\> import pygame

You shouldn't see any exceptions. If you'll see import exception that means there is no Pygame and it should be downloaded and installed from their [web site](http://www.pygame.org/download.shtml).

* [Raspbian](https://github.com/project-owner/Peppy.doc/wiki/Installation#raspbian)
* [Python](https://github.com/project-owner/Peppy.doc/wiki/Installation#python)
* [Pygame](https://github.com/project-owner/Peppy.doc/wiki/Installation#pygame)
* [Lirc/Pylirc](https://github.com/project-owner/Peppy.doc/wiki/Installation#lirc)
* [mpd/mpc](https://github.com/project-owner/Peppy.doc/wiki/Installation#mpd)
* [Peppy](https://github.com/project-owner/Peppy.doc/wiki/Installation#peppy)