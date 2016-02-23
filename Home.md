<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/peppy.png|alt=Peppy]]
</p>
### What is Peppy?
Peppy is the name of the application which was written in **P**ython language using **P**ygame library for **P**laying audio files and streams. It provides Graphical User Interface for audio players running in a headless mode. Pygame library provides audio playback functionality but its capabilities are pretty limited that's why Peppy doesn't play audio files/streams itself. Instead Peppy relies on functionality of existing popular audio players. Currently Peppy supports only 'mpd' audio player but it was designed in such a way that adding new player(s) should be pretty easy.

Currently Peppy has only Internet Radio functionality. In the future releases support for playing audio files and streams will be implemented.

As Peppy was written in Python it is a cross-platform application. It can run on any platform which supports Python. So far it was tested on Windows and Linux platforms. The availability of Pygame library on a platform is another criteria for running Peppy on that platform. And finally audio player supported by Peppy should be available on that platform as well.

Peppy has its own component/event system developed from scratch using Pygame library. It doesn't use any third-party widget library. Peppy player can be controlled by:
* Mouse
* Keyboard
* Touch screen
* Infrared Remote Control
* Rotary Encoders
* Web Browser

The screen resolution 480x320 pixels was the target resolution for Peppy player. Although it can scale up and down. The UI is usable in lower resolutions (e.g. 320x200) and higher resolutions (e.g. 800x480) as well.

The target hardware platform for Peppy player is Rapberry Pi single-board computer. Some features of the Peppy player are available only on this platform (e.g. Rotary Encoders). The hardware is pretty important part of this project therefore there is a separate chapter in this document about hardware. The wooden case also deserves a separate chapter. Therefore the name Peppy could be applied to all three ingredients: Hardware, Software and Woodware.

### Screenshots
To give you the idea how Peppy GUI looks like here are several screenshots of the Peppy player in different languages.
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/ex-1.png|alt=Example1]]
</p>
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/ex-2.png|alt=Example1]]
</p>
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/ex-3.png|alt=Example1]]
</p>
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/ex-4.png|alt=Example1]]
</p>

I hope that the information presented here will be useful for DIY kind of developers. At least such tutorial could save me a lot of time and hair if I would have it when I started this project ;)

Have fun!
