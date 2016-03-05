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
