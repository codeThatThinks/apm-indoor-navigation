## Sensor Board Design

### Localization

The system needs to be able to measure its location with centimeters of accuracy in order to successfully navigate around objects.

There are a few techniques available:

__RF-based time of arrival__  
pros:  
* no need for extra hardware
* little overhead on processor
  
cons:  
* suffers from reflection of radio signals
* cm accuracy requires accurate time measurements

__RF-based signal strength__  
pros:  
* no need for extra hardware
* little overhead on processor
  
cons:  
* inaccurate when lacking line-of-sight

__Inertial measurement__  
pros:  
* self-contained on quadcopter
* accurate
  
cons:  
* requires accelerometer and gyroscope
* more overhead on processor
* suffers from sensor drift

Since RF localization is extremely inaccurate and quadcopters already use an IMU in order to stabilize themselves, the system will use inertial measurement techniques for localization.


### Object Detection

The system needs to detect the boundaries of objects with centimeter accuracy.

There are a variety of sensors available in order to achieve this:

__Capacitive Displacement__
pros:
* capable of extremely accurate measurements

cons:
* can only measure conductive objects

__Laser Rangefinder/LIDAR__
pros:
* centimeter accuracy

cons:
* not accurate for extremely fine measurements
* requires accurate sub-nanosecond timing
* expensive

__Infrared__
pros:
* inexpensive

cons:
* limited to short distances (5ft)

__Radar__
pros:
* accurate

cons:
* expensive
* requires a lot of power

__Computer Vision__
pros:
* moderate accuracy

cons:
* requires heavy processing power
* effected by ambient lighting conditions

__Ultrasonic__
pros:
* moderate range (25ft)
* inexpensive

cons:
* less accurate than LIDAR

Due to the requirements, capacitive displacement, infrared, and radar sensors are not feasible. While computer vision seems possible, embedded microcontrollers severely lack in processing power, which would require processing to be done on the ground, preventing the system from being self contained. In most environments, more complex movement is required in the horizontal plane as opposed to the vertical. Since minimizing costs is one of the goals of this project, a combination of ultrasonic sensors to measure height constraints and a laser rangefinder to detect objects will be used.

After some further research, I found it is possible to build a laser rangefinder sensor with low cost and little hardware.


### Pathfinding and AI

The system is only able to detect objects in its immediate vicinity, requiring it to continually determine possible paths. The system will use some form of the D* algorithm.


### Hardware

The system will feature a circuit board designed to connect directly to autopilot boards in order add the necessary sensors, much like how shields are available to extend the capability of the Arduino.

An AVR microcontroller will exist on the board in order to handle signal processing, multiplexing, and communication with the autopilot board. Various standards exist for microcontroller to microcontroller communication, such as SPI or I2C. Since many autopilot boards lack I2C, SPI will be used. SPI is also significantly faster than I2C and supports duplex communications. In order to be compatible with both autopilot boards that run on 3.3 and 5 volts, a 3.3 volt linear regulator will be included on the sensor board.

The ultrasonic sensors are cheap clones of the popular HC-SR04 sensor in order to keep costs down. Only four pins are required to drive each sensor, including power and ground.

A separate circuit board will hold the laser diode and imaging sensor that makes up the laser rangefinder. This board will be rotated by a micro servo attached to a tab at the bottom of the board in order to allow full 360º coverage for the sensor. It works by capturing an image, turning on the laser diode, capturing a second image and then comparing the two low resolution images to determine where the laser is in the image. Triangulation is then used to determine the distance.

The main sensor board will include an ISP header for in system programming, two four pin headers for the ultrasonic sensor, an 18 pin header for the laser rangefinder board, and a three pin header for the laser rangefinder servo.

ATmega128 + external SRAM