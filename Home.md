<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/peppy.png|alt=Peppy]]
</p>
### What is Peppy?
Peppy is the name of the application which was written in **P**ython language using **P**ygame library for **P**laying audio files and streams. It provides Graphical User Interface for audio players running in a headless mode. Pygame library provides audio playback functionality but its capabilities are pretty limited that's why Peppy doesn't play audio files/streams itself. Instead Peppy relies on functionality of existing popular audio players. Currently Peppy supports only 'mpd' audio player but it was designed in such a way that adding new player(s) should be pretty easy task.

Currently Peppy has only Internet Radio functionality. In the future releases support for playing audio files and streams will be implemented.

As Peppy was written in Python it is a cross-platform application. It can run on any platform which supports Python. So far it was tested on Windows and Linux platforms. The availability of Pygame library on a platform is another criteria for running Peppy on that platform. And finally audio player supported by Peppy should be available on that platform as well.

Peppy has its own component/event system developed from scratch using Pygame library. It doesn't use any third-party widget library. Peppy player can be controlled by:
* Mouse
* Keyboard
* Touch screen
* Rotary Encoders
* Web Browser

The screen resolution 480x320 pixels was the target resolution for Peppy player. Although it can scale up and down. The UI is usable in lower resolutions (e.g. 320x200) and higher resolutions (e.g. 800x480) as well. The application doesn't resize UI dynamically. User has to define required resolution in the configuration file.

The target hardware platform for Peppy player is Rapberry Pi micro-computer. Some features of the Peppy player are available only on this platform (e.g. Rotary Encoders). The hardware is pretty important part of this project therefore there is a separate chapter in this Wiki about hardware. Another important part of this project is a wooden case which also deserves a separate chapter. The name Peppy can be applied to all three ingredients: Hardware, Software and Woodware.

### Screenshots
Here are several screenshots of the Peppy player.

This project was developed exclusively for my personal usage. But I had several request to share the code for this player. Hence this project on GitHub. I hope that it will be useful for another developers from the learning point of view. It can save them a lot of googling time and hair ;)

Have fun!
