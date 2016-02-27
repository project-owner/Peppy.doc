[Rotary encoders](https://en.wikipedia.org/wiki/Rotary_encoder) look a bit awkward on the modern devices which we usually used to control from touchscreens. But I found it more convenient and intuitive to use rotary encoder for volume control than touchscreen. The latter is good for visual feedback of your rotary encoder actions. Also when the touchscreen is in screensaver mode and volume control UI component is not visible then rotary encoder is also the best way to change the volume.

[The Rotary Encoders](http://www.ebay.com/itm/New-10pcs-12mm-Rotary-Encoder-Push-Button-Switch-Keyswitch-Electronic-Components-/331262931119) which were used for Peppy player can be connected directly to the Raspberry Pi's GPIO pins. Each rotary encoder needs four GPIO pins. One of these pins is Ground and the rest are signal pins. There is no need to connect positive power voltage to the rotary encoders as GPIO pins in Raspberry Pi can be programmatically configured to use pull-up resistors which connect the pin to the positive voltage through resistor.

The following diagram shows which GPIO pins were used for this connection. The GPIO pins which are not in use by another components and which are close to each other were selected. It's easier to make connection cable when the  pins/wires are grouped together. The details of creating connection cable will be discussed in the cabling section.

<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/re-1.png|alt=re-1]]
</p>
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/re-2.png|alt=re-2]]
</p>
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/re-3.png|alt=re-3]]
</p>

[<<Previous](https://github.com/project-owner/Peppy.doc/wiki/Infrared Sensor) | [Next>>](https://github.com/project-owner/Peppy.doc/wiki/Other Control Devices)