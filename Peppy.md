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

