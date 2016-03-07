[This web page](https://www.hifiberry.com/guides/configuring-linux-3-18-x/) explains all steps required to install and configure the software for HiFiBerry Amp+ amplifier. I've got the driver for Amp+ with Raspbian Jessie which I downloaded from the Adafruit web site. There are still some steps required to complete the amplifier configuration.

Add the following line to file ```/boot/config.txt```:
```
dtoverlay=hifiberry-amp
```

Create file ```/etc/asound.conf``` with the following content:
```
pcm.!default  {
 type hw card 0
}
ctl.!default {
 type hw card 0
}
```

Either remove or comment out the line ```snd_bcm2835``` in file ```/etc/modules```. That will disable on-board Raspberry Pi audio system. Reboot the system:
```
sudo reboot
```

Verify that AMP+ was configured properly by running the following program:
```
aplay -l
```
My output from that program looks like this:
```
**** List of PLAYBACK Hardware Devices ****
card 0: sndrpihifiberry [snd_rpi_hifiberry_amp], device 0: HifiBerry AMP HiFi tas5713-hifi-0 []
  Subdevices: 1/1
  Subdevice #0: subdevice #0
```

By default the volume level will be set to 100% which is very loud level. Use ```amixer``` to reduce the volume level:
```
amixer sset Master 75%
```
The volume range of the audio player (Mpd) will be restricted by this setting. Its maximum (100%) will not be louder than defined by ```amixer``` (75%).

To test amplifier you can prepare and upload WAV file and play it with ```aplay``` program:
```
aplay test.wav
```

[<<Previous](https://github.com/project-owner/Peppy.doc/wiki/Adafruit PiTFT) | [Next>>](https://github.com/project-owner/Peppy.doc/wiki/Python)
