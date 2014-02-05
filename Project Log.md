# Indoor Navigation System for Multirotors
## Project Log
October 5, 2013 - Janurary 8, 2014

## Problem

Nearly all autonomous multirotors make use of autopilot systems that rely heavily on GPS and user-defined waypoints. Multirotors equipped with these systems have no ability to detect objects at close range, and since GPS reception is unreliable when there isn't a clear line-of-sight between the receiver and GPS satellites, it's clear that there isn't an autopilot system suited for indoor environments.


## Goals

The goal of this project is to design and build an autopilot system for multirotors that works well in an indoor environment or confined space. This means that the system must not use GPS, detect objects in its vicinity, and determine an appropriate path around such objects. A quadcopter will be used as a platform on which the system will be built.

Stretch goals would include building a self-contained system, minimizing cost, and building a system that is compatible with both ArduPilot autopilot systems and the APM autopilot firmware.


## Research
### Quadcopter Absolute Positioning
#### Orientation
- magnetometer
	- measure attitude and orientation

#### Localization
- network of low-range receivers
	- only few receivers detect when in vicinity
	- aproximate location, low accuracy

- time of arrival
	- time signal takes to get to receiver
	- works because signal propagation rate is constant
	- able to calculate distance
	- position calculated when paired with trilateration
	- time on sender and receiver must be synchronized
	- suffers from reflection of radio signals and multipath conditions

- time-based angle of arrival
	- angle from which signal arrives at receiver
	- position determined by triangulation
	- network of receivers
	- determined by difference in time of arrival between receivers

- directional angle of arrival
	- angle from which signal arrives at receiver
	- position determined by triangulation
	- network of receivers
	- determined by highly directional receivers

- received signal strength indication (RSSI)
	- measurement of power level by receiver
	- radio waves propagate according to inverse-square law
	- transmitted and received signal strength must be known
	- approximate location can be calculated

- inertial measurement
	- measure movement
	- calculate location based on known original location
	- suffers from sensor drift

- barometer, accelrometer, gyroscope
	- measurement of 3D movement
	- orientation change
	- velocity change

### Detecting Objects
- optical
	- visible light
	- infrared
	- https://en.wikipedia.org/wiki/Feature_detection_(computer_vision)

- acoustic
	- ultrasonic

- radar

- lidar (laser rangefinder)
	- distance measurement using lasers
	- time-of-flight distance measurement

### Pathfinding and AI
- map all objects detected to avoid them in the future

- find possible paths instead of objects
	- known starting location is requied
	- first examine possible paths from starting node
	- create nodes at end of possible paths, examine paths from there
	- continually examine new nodes and paths until final destination is reached
	- always pick nodes of shortest length
	- not ideal in tight spaces, aka unneccessary nodes

- landmark navigation
	- known artifcial landmarks
	- learn possible paths

- finding shortest path: graph search algorithms
	- intersection, road and map = vertex, edge and graph
	
	- Bellman-Ford algorithm
		- slower than Dijkstra's algorithm
		- supports negative edge weights

	- Dijkstra's algorithm
		- fastest single-source shortest-path algorithm for arbitrary directed graphs
		- non-negative edge weights
		- evaluates open nodes iteratively
		- searches nodes from start node to goal node

	- A* algorithm
		- based on Dijkstra's algorithm
		- faster
		- uses heuristics

	- D* algorithms
		- D*
			- Dynamic A*
			- nodes to be evaluated: OPEN List
			- individually evaluates each node, places neighboring nodes on OPEN list
			- searches backwards from goal node, cost to next node stored in each node (backpointer)
			- follows backpointers to reach target

		- Focused D*
			- extension of D*
			- uses heuristic to focus propagation toward robot

		- D* Lite
			- not based on D*
			- same behavior, simpler to understand
			- implemented in fewer lines of code, as fast or faster than Focused D*

### UAV Regulations
- must fly below 400 feet
- must not fly near airports or air traffic

- must maintain pilot-in-control
	- manual control is always available
	- line-of-sight to aircraft

- do not fly in populated areas
- until the aircraft is successfully flight tested, do not operate in presense of spectators
- notify airport operator when flying within 3 miles
- full-scale aircraft have right-of-way

### Quadcopter Safety
- avoid flight over people
- maintain line-of-sight
- guard or cover on propellers
- use breakable, less stiff propellers

- pre-flight:
	- verify all batteries are charged
	- check for aircraft damage (airframe, motors, propellers)
	- check that all electrical connections are secure
	- check operational area for potential hazards

- control systems:
	- check for radio interference
	- make sure propellers are clear before powering on any systems
	- announce "CLEAR PROP"
	- make sure transmitter information is correct (battery voltage, etc)
	- make sure throttle is in off position
	- power on all systems
	- test transmitter/receiver system
	- check control systems
	- check motors for proper operation

- before take off:
	- check transmitter settings are in proper position
	- check that take off area is clear
	- set flight timer alarm
	- accounce "TAKE OFF"

- in-flight:
	- keep clear of potential hazards
	- keep clear of people and buildings
	- if flown over people/buildings, maintain safe altitude for recovery
	- continually check for potential hazards

- landing
	- make sure emergency landing can be made
	- check landing area for potential hazards
	- accounce "LANDING"
	- land aircraft away from obstructions and people

- post-flight
	- power off all systems
	- check for damage


## Research: Bibliography
Pourhomayoun, Mohammad, Zhanpeng Jin, and Mark Fowler. "Spatial Sparsity Based Indoor Localization in Wireless Sensor Network for Assistive Healthcare." IEEE, n.d. Web. 08 Oct. 2013. <http://ws2.binghamton.edu/fowler/Spatial%20Sparsity%20Based%20Indoor%20Localization%20in%20Wireless%20Sensor%20Network%20for%20Assistive%20Healthcare%20Systems%20-%20Rev2.pdf>.

Indoor Navigation. German Aerospace Center (DLR), n.d. Web. 08 Oct. 2013. <http://www.kn-s.dlr.de/indoornav/>.

Bulusu, Nirupama, John Heidemann, and Deborah Estrin. "GPS-less Low Cost Outdoor Localization For Very Small Devices." University of Southern California, n.d. Web. 08 Oct. 2013. <http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.21.8113&rep=rep1&type=pdf>.

Lindeberg, Tony. "Scale-space." Wiley Encyclopedia of Computer Science and Engineering. N.p.: John Wiley and Sons, 2008. N. pag. Web. 08 Oct. 2013. <ftp://ftp.nada.kth.se/CVAP/reports/Scale-Space-EncCompSci.pdf>.

Yapo, Theodore C., Charles V. Stewart, and Richard J. Radke. "A Probabilistic Representation of LiDAR Range Data for Efﬁcient 3D Object Detection." Rensselaer Polytechnic Institute, n.d. Web. 08 Oct. 2013. <http://www.ecse.rpi.edu/~rjradke/papers/radkes3d08.pdf>.

Tobias, Stephen J., and A Antonio Arroyo. "Autonomous Pathfinding." University of Florida, 4 May 2000. Web. 08 Oct. 2013. <http://www.mil.ufl.edu/publications/fcrar00/tobias.pdf>.

Stentz, Anthony. "Optimal and Efﬁcient Path Planning for Partially-Known Environments." Carnegie Mellon University, 08 May 1994. Web. 08 Oct. 2013. <http://web.mit.edu/16.412j/www/html/papers/original_dstar_icra94.pdf>.

Koenig, Sven, and Maxim Likhachev. "Fast Replanning for Navigation in Unknown Terrain." IEEE, n.d. Web. 08 Oct. 2013. <http://pub1.willowgarage.com/~konolige/cs225b/dlite_tro05.pdf>.

"RCAPA General Guidelines." Remote Control Aerial Photography Association, n.d. Web. 08 Oct. 2013. <http://www.rcapa.net/guidelines.aspx>.

"Safety MultiCopter." ArduCopter. 3DRobotics, n.d. Web. 08 Oct. 2013. <http://copter.ardupilot.com/wiki/safety-multicopter/>.

"Fact Sheet - Unmanned Aircraft Systems (UAS)." Federal Aviation Administration, July 2011. Web. 08 Oct. 2013. <http://www.faa.gov/about/initiatives/uas/media/UAS_FACT_Sheet.pdf>.

Van Vuren, R. J. "Model Aircraft Operating Standards." Federal Aviation Administration, 9 June 1981. Web. 08 Oct. 2013. <http://www.faa.gov/documentLibrary/media/Advisory_Circular/91-57.pdf>.


## Test Procedure
The system will be tested that it is accurately able to determine its absolute location, that is, GPS coordinates, without the use of GPS:  
1. The coordinates of the ground station will be determined using a proven method, such as GPS.  
2. The coordinates of the test location will be determined using the same method as was the coordinates of the ground station.  
3. The indoor navigation system will be turned on and the quadcopter will be placed at the test location.  
4. The known coordinates of the test location will be compared to the coordinates reported by the system.  
5. The reported coordinates will be deemed accurate if they are within a 1 meter tolerance of the known coordinates.

Secondly, the ability for the system to accurately detect objects will be tested:  
1. Objects ranging from small (less than half a meter) to large (more than 1 meter) will be randomly arranged in an area.  
2. Objects that continually change their location or shape, such as a flag, will also be arranged in the area.  
3. The system will be turned on and the quadcopter will positioned at the edge of the area.  
4. Object locations and sizes reported by the system will be compared to the actual sizes and locations of the objects.  
5. The system will be deemed accurate if all objects are detected and are properly located.

Next, the system will be tested for its ability to determine a correct path through an area of objects:  
1. Objects ranging from small (less than half a meter) to large (more than 1 meter) will be randomly arranged in an area.  
2. Objects that continually change their location or shape, such as a flag, will also be arranged in the area.  
3. The system will be turned on and the quadcopter will positioned at the edge of the area.  
4. The system will begin object detection and report a path through the objects.  
5. A path is deemed correct if it doesn't interfere with any objects and allows the quadcopter to maintain at least a 25 cm distance from any object.

Finally, the ability for the system to properly guide the quadcopter along a determined path will be tested:  
1. Objects ranging from small (less than half a meter) to large (more than 1 meter) will be randomly arranged in an area.  
2. Objects that continually change their location or shape, such as a flag, will also be arranged in the area.  
3. The system will be turned on and the quadcopter will positioned at the edge of the area.  
4. A destination location on the opposite edge of the area will be inputted to the system.  
5. The system will begin object detection and path determination.  
6. The quadcopter will be guided by the system along the determined path towards the destination location. Manual control will always be available for safety purposes.  
6. This test will be successful if the destination location is reached by the quadcopter and that the quadcopter successfully avoids the objects in the area during the flight.


## Risk Assessment
The quadcopter platform consists of rotors driven by considerably powerful motors, which has the potential to cause harm to people, property, and itself. The flight control software used to control the quadcopter is still an experimental technology and may act unexpectedly at any time. Failure of any critical system on the quadcopter (i.e. rotors, battery, RF communications, navigation system, etc.) may result in unexpected operation, which may be potentially harmful. Onboard sensors used by the navigation system may make use of lasers (specifically sensors that use lidar), which may be potentially harmful. The RF system onboard the quadcopter is susceptible to interference, which may prevent monitoring of the quadcopter during operation or the ability to gain manual control of the aircraft in the event of an emergency. The weight of the navigation system being added to the quadcopter is unknown, which could lead to a depletion of battery life faster than intended. This could lead to unstable and unexpected flight. The navigation system guiding the quadcopter may include unexpected bugs and has the potential to malfunction, which may lead the quadcopter on an undesirable and potentially harmful flight path.

Due to the nature of quadcopters, it is difficult to avoid many of these risks. However, steps will be taken to attempt to mitigate many of these risks. Rotor guards will be placed around rotors to reduce the potential that they come in contact with something. The rotors themselves will be cheap and flexible so that, in the event that they do contact something, the rotor will break or flex instead of causing damage or injury. During operation and testing, the area of operation will be kept clear of people at all times. In the event that someone enters the area of operation, flight will stop immediately. The control software used on the quadcopter includes failsafes and safety features, such as motor-arming and failsafes for low battery, lost RF signal, etc. Any custom-built software that will operate on the quadcopter will also include these safety features. These safety features and failsafes will be enabled at all times.

The FAA regulations for operation of UAVs will be followed at all times. These regulations include maintaining an altitude of less than 400 feet, not flying within the vicinity of airports, air traffic, or populated areas, and always maintaining line-of-sight to the aircraft and the ability to switch to manual control at any time.


## Roadmap

- design (3 weeks, Oct 21 - Nov 10)
	- week 1 (Oct 21 - Oct 27)
		- APM-based quadcopter
	
	- week 2 (Oct 28 - Nov 3)
		- sensor board
		- nav system
	
	- week 3 (Nov 4 - Nov 10)
		- order parts! (allow for 5 day shipping)
		- ground station

- build (2 weeks, Nov 11 - 24)
	- week 4 (Nov 11 - Nov 17) 
		- quadcopter
		- ground station
	
	- week 5 (Nov 18 - Nov 24)
		- sensors
		- nav system

- code (3 weeks, Nov 25 - Dec 15)
	- week 6 (Nov 25 - Dec 1)
		- apm firmware base
		- object detection
		- ground station
	
	- week 7 (Dec 2 - Dec 8)
		- path finding algorithm
	
	- week 8 (Dec 9 - Dec 15)
		- path following
		- misc coding

- test (3 weeks, Dec 16 - Jan 5)
	- week 9 (Dec 16 - Dec 22)
		- quadcopter works
		- absolute location
	
	- week 10 (Dec 23 - Dec 29)
		- object detection
		- path finding
		- path following
	
	- week 11 (Dec 30 - Jan 5)
		- misc testing
		- fix stuff that doesn't work

- write up abstract (.5 weeks, Jan 6 - Jan 8)
- project fair display (3 weeks, Jan 9 - Jan 31)
