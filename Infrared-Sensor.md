[Infrared Sensor model 1838](http://www.ebay.com/itm/10pcs-Integrated-Infrared-Acceptor-Transducer-HX1838-/250888200539) was used for Peppy player. This sensor doesn't need any additional components (resistors or capacitors) for connecting to the Raspberry Pi. It can be directly connected to the GPIO pins. The sensor output signal can be connected to any spare GPIO pin. The GPIO pin #23 is such spare pin as it's not used by Amp+ and touchscreen. It was chosen because it's located close to the power pins (+3.3V and Ground). Therefore it's easier to make ribbon cable for this connection - all necessary wires in the cable will be located next to each other. The details of preparing such cable will be discussed in the cabling chapter.
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/ir-1.png|alt=ir-1]]
</p>

The sensor was mounted above the touchscreen right in the middle of the front panel. The length of connecting cable/wires is not so critical just don't make it too long.
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/ir-2.png|alt=ir-2]]
</p>

Any infrared remote could be used to control Peppy player. I had a spare remote from WD TV Live player so I configured the system to use that remote. I'll provide all required info/links which will help to understand how to configure any remote control for using it with Raspberry Pi 2. This information will be covered in the software chapter.

The front panel of the Peppy player is made of the black opaque acrylic glass which blocks infrared signal. That's why small hole was drilled in the front panel and round window created from a transparent acrylic glass was inserted into that hole and glued to the panel.
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/ir-3.png|alt=ir-3]]
</p>

As infrared sensor needs support from the system Linux drivers (LIRC) some system configuration changes are required. The software chapter will cover that in detail.