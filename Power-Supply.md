While choosing a Power Supply (PS) for your project you have to consider the following factors:
* Type of PS - Linear or Switching.
* Maximum power which PS can produce. This factor also defines the dimensions or PS

Usually the recommendation for analog audio projects is to use Linear PS as it's less noisy. But for digital projects like Peppy player using Switching PS should be OK as its output stage Amp+ is Class-D amplifier which is some sort of switching device itself :)

Amp+ module provides power for Raspberry Pi through GPIO connector. The DC voltage of the PS connected to Amp+ should be in range 12-18V. The blue LED in the power button needs 12V. That's why to avoid any voltage conversions we need +12V power supply.

To define the wattage necessary for your project you have to calculate maximum consumption of all components in your system. According to [this](https://www.raspberrypi.org/help/faqs/#powerReqs) recommendation to power Raspberry Pi 2 you need PS which can provide +5V and current 1.8A or 5*1.8=9W. As we use 12V PS that will be 9/12=0.75A. To produce 25W output from Amp+ with 12V PS you need 25/12=2.08A current. So the total current for main power consumers Raspberry Pi and Amp+ will be 0.75+2.08=2.83A. The consumption of remaining hardware components (touchscreen, IR sensor, mouse, keyboard) is much less and can be safely estimated as 1A in total. That gives us the required current for our PS which is about 4A.

The closest PS which I found on the market is [this Mean Well PS](http://www.ebay.com/itm/RPS-60-12-Meanwell-AC-DC-Power-Supply-Single-OUT-12V-5-5A-60W-12V-5A-2-PER-/311421865601) which provides +12V and 5.5A. That is more than we need but over-powering the system doesn't hurt as it will draw from PS only power which it requires not more. More harmful is under-powering your system.
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/ps.png|alt=ps]]
</p>

[The illuminated power push-button](http://www.ebay.com/itm/Durable-12V-19mm-Black-Case-ON-OFF-Blue-Angel-Eye-LED-Push-Button-Metal-Switch-/400878791396) adds nice touch to the system.
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/pb.png|alt=pb]]
</p>

You have to connect to the button main AC power 110V and 12V from PS for the blue LED. That can be done either directly or through some splitter like on the image below.
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/pb-2.png|alt=pb]]
</p>

<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/ps-connect.png|alt=ps-connect]]
</p>