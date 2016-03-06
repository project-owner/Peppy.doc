Download Peppy and install it in folder ```/home/pi```. Make sure that Peppy is working:
```
cd Peppy
sudo python peppy.py
```
When Peppy player starts in invokes Mpc client which in turn launches Mpd program. It should start playing the current radio station defined in Peppy's configuration file ```config.txt```.

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
The Pappy player will start playing current radio stream automatically.

To disable all booting messages during startup remove properties ```fbcon=map:10 fbcon=font:VGA8x8``` from the end of line in file ```/boot/cmdline.txt```. The edited line should look like this one:
```
dwc_otg.lpm_enable=0 console=ttyAMA0,115200 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait
```

###Configuration File###
```
[screen.info]
width = 480
height = 320
depth = 32
```

```
[usage]
use.splash = False
use.lirc = True
use.rotary.encoders = True
use.mpc.player = True
use.mpd.player = False
use.web = True
use.logging = False
```
```
[current]
mode = radio
language = ru
playlist = retro
station = 2
screensaver = slideshow
screensaver.delay = delay.off
```
```
[loop.interval]
main.event.loop = 0.2
lirc.event.loop = 0.2
```
```
[music.server]
folder = C:\\Temp\\audio\\mpd-0.17.4-win32\\bin
command = mpd mpd.conf
host = localhost
port = 6600
```
```
[web.server]
http.port = 8000
```
```
[colors]
color.web.bgr = 0,38,40
color.dark = 0,70,75
color.medium = 70,110,120
color.bright = 160,190,210
color.contrast = 255,190,120
color.logo = 20,190,160
```
```
[font]
font.name = FiraSans.ttf
```
```
[previous]
news = 0
culture = 0
retro = 0
children = 0
classical = 0
pop = 3
jazz = 8
rock = 0
contemporary = 0
```
```
[order.home.menu]
radio = 1
screensaver = 2
language = 3
about = 4
hard.drive = 5
stream = 6
```
```
[order.language.menu]
en_us = 1
de = 2
fr = 3
ru = 4
```
```
[order.genre.menu]
news = 1
culture = 2
retro = 3
children = 4
classical = 5
pop = 6
jazz = 7
rock = 8
contemporary = 9
```
```
[order.screensaver.menu]
clock = 1
logo = 2
slideshow = 3
```
```
[order.screensaver.delay.menu]
delay.1 = 1
delay.3 = 2
delay.off = 3
```


[<<Previous](https://github.com/project-owner/Peppy.doc/wiki/Pylirc) | [Next>>](https://github.com/project-owner/Peppy.doc/wiki/Peppy Player UI)