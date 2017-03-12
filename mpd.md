The following command installs 'mpd' player in folder /usr/bin
```
sudo apt-get install mpd
```
Then set 'mpd' mixer type to 'software' to control volume through 'mpd'. For that uncomment the line with mixer_type in file /etc/mpd.conf:
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
After installing 'mpd' it's automatically configured as a service and it will start every time the Raspberry Pi starts. In order to have full control on 'mpd' player it's better to stop 'mpd' service and disable it from starting upon system startup
```
sudo service mpd stop
sudo update-rc.d mpd disable
```
For debugging purposes it's recommended to install 'mpc'. It's command line client for 'mpd'. To install 'mpc' run this command:
```
sudo apt-get install mpc
```

[<<Previous](https://github.com/project-owner/Peppy.doc/wiki/Pygame) | [Next>>](https://github.com/project-owner/Peppy.doc/wiki/LIRC)
