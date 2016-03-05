Add the following line to /boot/config.txt:
pi@raspberrypi ~ $ sudo nano /boot/config.txt
dtoverlay=hifiberry-amp

Create file /etc/asound.conf:
pi@raspberrypi ~ $ sudo nano /etc/asound.conf
with the following content:
pcm.!default  {
 type hw card 0
}
ctl.!default {
 type hw card 0
}

Remove the line
snd_bcm2835
from /etc/modules to disable on-board ALSA audio

Reboot

Verify that AMP+ configured properly by running:
aplay -l
My output:

**** List of PLAYBACK Hardware Devices ****
card 0: sndrpihifiberry [snd_rpi_hifiberry_amp], device 0: HifiBerry AMP HiFi tas5713-hifi-0 []
  Subdevices: 1/1
  Subdevice #0: subdevice #0
  
Use amixer to reduce volume:
amixer sset Master 70% // loud

Make and upload wav file test.wav
Play WAV file:
aplay test.wav


