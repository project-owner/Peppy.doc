There is separate playlist for each genre and for each language. They contain direct links to the free radio station streams. For example here is the path to English/USA playlist with radio stations for kids:
```
/home/pi/Peppy/stations/en_us/children/children.m3u
```

Each radio station should defined by three lines in the playlist:

1. Station index. The first index in the playlist is '0'.
2. Station name.
3. The URL to station stream.

Here is the example of the playlist content:
```
#0
#Kids Public Radio. Lullaby
http://kidspublicradio2.got.net:8000/lullaby
#1
#Kids Public Radio. Pipsqueaks
http://kidspublicradio2.got.net:8000/pipsqueaks
```

####Station Index###
The number after the comment character defines the order of the radio station in the station menu in the Station Screen. The station logo image which is located in the same folder as playlist file should be named by this number. For example for the example above there are two images for those stations:
```
/home/pi/Peppy/stations/en_us/children/0.png
/home/pi/Peppy/stations/en_us/children/1.png
```
The image size for station logo should be 200*200 pixels.



To add new station 