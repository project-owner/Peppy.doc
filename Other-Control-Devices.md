The main hardware components used to control Peppy player are: touchscreen, rotary encoders and remote control. The details related to this devices were discussed already in the corresponding chapters. The other devices which can be used to control player include:
* [Mouse](https://github.com/project-owner/Peppy.doc/wiki/Other-Control-Devices#Mouse)
* [Keyboard](https://github.com/project-owner/Peppy.doc/wiki/Other-Control-Devices#Keyboard)
* Other computers or mobile devices with [Web Browsers](https://github.com/project-owner/Peppy.doc/wiki/Other-Control-Devices#Web Browsers). 

### Mouse
USB mouse can be connected to any USB connector installed on the Raspberry Pi 2. As this is standard device it will be automatically recognized and configured by the system without any manual steps. The mouse connected to the Peppy player is useful only during debugging/troubleshooting if because of some reasons there is no network access to the player. In all other cases it is useless as there are more convenient methods to control player - touchscreen, remote control and rotary encoders. 

Another advantage of the mouse is the fact that all touchscreen events are converted into mouse events. Therefore during software development there is no need to work with real touchscreen. For example you can develop your software for touchscreen on Windows machine using the mouse and then just deploy your software on Raspberry Pi with touchscreen. The program will not need any changes. All event handlers written for mouse will work the same way for the touchscreen.

### Keyboard
keyboard

### Web Browsers

[<<Previous](https://github.com/project-owner/Peppy.doc/wiki/Rotary Encoders) | [Next>>](https://github.com/project-owner/Peppy.doc/wiki/Cabling)