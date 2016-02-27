From all hardware components only Amp+ was attached to the Raspberry Pi 2 directly to its GPIO connector. All other components such as the touchscreen, infrared sensor and rotary encoders were connected by means of ribbon cable. As the base for this cable I used 40-pin ribbon cable with female connectors attached to it already. The following image demonstrates all steps which were done to prepare the cable. 
<p align="center">
[[https://github.com/project-owner/Peppy.doc/blob/master/images/hardware/cabling.png|alt=cabling]]
</p>

1. First you need to measure and cut the correct length which you need. You can use either regular scissors or hobby knife to cut the cable. Be careful as there is no 'Undo' operation for this step ;)

2. Using hobby knife make a small cut at the cable edge which will split the cable into 26-pin and 14-pin parts. Then just using your fingers and nails tear two parts down to the connector. The part with 26-pin will go to the touchscreen and infrared sensor and the rest to the rotary encoders.

3. Attach female 26-pin connector for touchscreen. Make sure that you placed it at the correct position and aligned it properly by the cable edges. Then gently squeeze it by pliers till the click sound of the side fasteners.

4. Using hobby knife form the parts for the rotary encoders and cut off the wires which are not used. Make cuts as close to the 40-pin connector as possible but be careful as it's easy to cut the neighbor wires. One cable will have 4 wires and the other 5 wires as the required wires are not adjacent.

5. From the cable end which protrudes from the 26-pin connector make the cable for infrared sensor. The sensor needs only three wires but as all required wires are not adjacent to each other 4 wires cable can be formed where one wire will be unused.

6. Solder infrared sensor and rotary encoders to the corresponding wires of the cable.

[<<Previous](https://github.com/project-owner/Peppy.doc/wiki/Other Control devices) | [Next>>](https://github.com/project-owner/Peppy.doc/wiki/Networking)