###Pygame###
Pygame also comes with Raspbian. To make sure that it's really there start Python interpreter and type the following line at prompt:
```python
import pygame
```
You shouldn't see any exceptions. If you'll see import exception that means there is no Pygame and it should be downloaded and installed from their [web site](http://www.pygame.org/download.shtml).

There is no need to install Pygame as it comes pre-installed with Raspbian distro. But Raspbian Jessie has some incompatibility issues with SDL 2.x used by Pygame. That makes the touchscreen unusable. The workaround is to get SDL 1.2 from the previous Raspbian version - Wheezy. How to do that was explained [here](https://learn.adafruit.com/adafruit-2-4-pitft-hat-with-resistive-touchscreen-mini-kit/pitft-pygame-tips). Create the script [installsdl.sh](https://github.com/project-owner/Peppy.doc/blob/master/files/installsdl.sh) and run it:
```
sudo chmod +x installsdl.sh
sudo ./installsdl.sh
```
