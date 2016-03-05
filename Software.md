The following image shows the software components required to run Peppy player. Three base layers come with Raspbian. Top two layers should be installed manually.

<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/software/software.png|alt=software]]
</p>

* **Raspbian (Jessie)**. This is Linux Kernel and drivers.
* **TFT Driver**. This driver for PiTFT touchscreen comes with Raspbian distribution provided by Adafruit.
* **Amp+ Driver**. This driver for HiFiBerry amplifier included to the Raspbian distribution.
* **Python**. Python interpreter also comes with Raspbian.
* **Pygame**. This Python library for GUI development also comes with Raspbian distribution. 
* **LIRC**. It stands for Linux Infrared Remote Control. This driver should be installed manually.
* **PyLIRC**. This Python wrapper for LIRC should be also installed manually.
* **MPD/MPC**. This is free audio player (MPD) and client (MPC) for that player. They should be installed manually.
* **Peppy**. This application should be installed from Github.

Here are the main Software Tools which were used for Peppy player development:

1. **[Eclipse](https://www.eclipse.org/)**. This is IDE for Java Developers.

2. **[PyDev](http://www.pydev.org/)**. This is Python IDE for Eclipse.

3. **[PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)**. This software was used to connect to the Raspberry Pi computer through SSH.

4. **[WinSCP](https://winscp.net/eng/index.php)**. This program was necessary to copy files from Windows machine to Raspberry Pi.

5. **[Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/)**. The Raspbian OS image was placed to SD card using this program.

[<<Previous](https://github.com/project-owner/Peppy.doc/wiki/Assembling) | [Next>>](https://github.com/project-owner/Peppy.doc/wiki/Installation)