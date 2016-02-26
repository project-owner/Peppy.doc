[HiFiBerry Amp+](https://www.hifiberry.com/ampplus/) is the integrated amplifier module. That means that instead of using traditional components for a digital audio system: DAC - Pre-Amp - Power-Amp you can use just one - Amp+. It has Class-D amplifier on board which provides high quality powerful output: 25W on 4 Ohm speakers. As any other Class-D amplifier it's also very efficient amplifier and because of that there is no need to use heat sink or fan.

<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/amp.png|alt=Peppy]]
</p>

Raspberry Pi 2 feeds audio data to Amp+ via [I2S (Integrated Interchip Sound)](https://en.wikipedia.org/wiki/I%C2%B2S) signal. It comes from Raspberry Pi to Amp+ through GPIO connector. This is the same signal which you can find in traditional CD players between the transport and DAC.

Amp+ is ready right out of the box. You just have to install optional spacers (either your own or those which come with Amp+) on Raspberry Pi.

<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/pi-spacers.png|alt=Peppy]]
</p>

Amp+ has 40-pin connector with pins which protrude through the board and allow to connect any other devices which need GPIO signals. Peppy player leverages this Amp+ feature to connect another external components: IR Sensor, Rotary Encoders and Touch-Screen. Just remember that pins used by Amp+ should not be used by another devices.

<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/pi-amp.png|alt=Peppy]]
</p>

After attaching Amp+ to GPIO connector on Raspberry Pi 2 some software configuration should be done. The details of that process will be covered in the separate software chapter.