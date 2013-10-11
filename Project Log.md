# Indoor Navigation System for Multirotors
## Project Log
October 5, 2013 - Janurary 8, 2014

## Problem

Nearly all autonomous multirotors make use of autopilot systems that rely heavily on GPS and user-defined waypoints. Multirotors equipped with these systems have no ability to detect objects at close range, and since GPS reception is unreliable when there isn't a clear line-of-sight between the receiver and GPS satellites, it's clear that there isn't an autopilot system suited for indoor environments.


## Goals

The goal of this project is to design and build an autopilot system for multirotors that works well in an indoor environment or confined space. This means that the system must not use GPS, detect objects in its vicinity, and determine an appropriate path around such objects. A quadcopter will be used as a platform on which the system will be built.


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
Pourhomayoun, Mohammad, Zhanpeng Jin, and Mark Fowler. "Spatial Sparsity Based Indoor Localization in Wireless Sensor Network for Assistive Healthcare." IEEE, n.d. Web. 08 Oct. 2013. [http://ws2.binghamton.edu/fowler/Spatial%20Sparsity%20Based%20Indoor%20Localization%20in%20Wireless%20Sensor%20Network%20for%20Assistive%20Healthcare%20Systems%20-%20Rev2.pdf](http://ws2.binghamton.edu/fowler/Spatial%20Sparsity%20Based%20Indoor%20Localization%20in%20Wireless%20Sensor%20Network%20for%20Assistive%20Healthcare%20Systems%20-%20Rev2.pdf).

Indoor Navigation. German Aerospace Center (DLR), n.d. Web. 08 Oct. 2013. [http://www.kn-s.dlr.de/indoornav/](http://www.kn-s.dlr.de/indoornav/).

Bulusu, Nirupama, John Heidemann, and Deborah Estrin. "GPS-less Low Cost Outdoor Localization For Very Small Devices." University of Southern California, n.d. Web. 08 Oct. 2013. [http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.21.8113&rep=rep1&type=pdf](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.21.8113&rep=rep1&type=pdf).

Lindeberg, Tony. "Scale-space." Wiley Encyclopedia of Computer Science and Engineering. N.p.: John Wiley and Sons, 2008. N. pag. Web. 08 Oct. 2013. [ftp://ftp.nada.kth.se/CVAP/reports/Scale-Space-EncCompSci.pdf](ftp://ftp.nada.kth.se/CVAP/reports/Scale-Space-EncCompSci.pdf).

Yapo, Theodore C., Charles V. Stewart, and Richard J. Radke. "A Probabilistic Representation of LiDAR Range Data for Efﬁcient 3D Object Detection." Rensselaer Polytechnic Institute, n.d. Web. 08 Oct. 2013. [http://www.ecse.rpi.edu/~rjradke/papers/radkes3d08.pdf](http://www.ecse.rpi.edu/~rjradke/papers/radkes3d08.pdf).

Tobias, Stephen J., and A Antonio Arroyo. "Autonomous Pathfinding." University of Florida, 4 May 2000. Web. 08 Oct. 2013. [http://www.mil.ufl.edu/publications/fcrar00/tobias.pdf](http://www.mil.ufl.edu/publications/fcrar00/tobias.pdf).

Stentz, Anthony. "Optimal and Efﬁcient Path Planning for Partially-Known Environments." Carnegie Mellon University, 08 May 1994. Web. 08 Oct. 2013. [http://web.mit.edu/16.412j/www/html/papers/original_dstar_icra94.pdf](http://web.mit.edu/16.412j/www/html/papers/original_dstar_icra94.pdf).

Koenig, Sven, and Maxim Likhachev. "Fast Replanning for Navigation in Unknown Terrain." IEEE, n.d. Web. 08 Oct. 2013. [http://pub1.willowgarage.com/~konolige/cs225b/dlite_tro05.pdf](http://pub1.willowgarage.com/~konolige/cs225b/dlite_tro05.pdf).

"RCAPA General Guidelines." Remote Control Aerial Photography Association, n.d. Web. 08 Oct. 2013. [http://www.rcapa.net/guidelines.aspx](http://www.rcapa.net/guidelines.aspx).

"Fact Sheet - Unmanned Aircraft Systems (UAS)." Federal Aviation Administration, July 2011. Web. 08 Oct. 2013. [http://www.faa.gov/about/initiatives/uas/media/UAS_FACT_Sheet.pdf](http://www.faa.gov/about/initiatives/uas/media/UAS_FACT_Sheet.pdf).

Van Vuren, R. J. "Model Aircraft Operating Standards." Federal Aviation Administration, 9 June 1981. Web. 08 Oct. 2013. [http://www.faa.gov/documentLibrary/media/Advisory_Circular/91-57.pdf](http://www.faa.gov/documentLibrary/media/Advisory_Circular/91-57.pdf).

## Test Procedure
- report exact location, compare to GPS location
- present field of objects, compare computed path with reference path

- object tolerance test
	- fly between objects slightly bigger than width/height (tolerance 5 in)
	- fly through field of continously changing objects (e.g. flags)
