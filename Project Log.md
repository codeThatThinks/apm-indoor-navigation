# Indoor Navigation System for Multirotors
## Project Log
October 5, 2013 - Janurary 8, 2014

## Problem

Nearly all autonomous multirotors make use of autopilot systems that rely heavily on GPS and user-defined waypoints. Multirotors equipped with these systems have no ability to detect objects at close range, and since GPS reception is unreliable when there isn't a clear line-of-sight between the receiver and GPS satellites, it's clear that there isn't an autopilot system suited for indoor environments.


## Goals

The goal of this project is to design and build an autopilot system for multirotors that works well in an indoor environment or confined space. This means that the system must not use GPS, detect objects in its vicinity, and determine an appropriate path around such objects. A quadcopter will be used as a platform on which the system will be built.


## Research

### Quadcopter Absolute Positioning (GPS Alternatives)
- position (point in 3d space) vs location (point on 2d plane)

- improving GPS accuracy
	- integration between gps and indoor positioning systems
	- use of Assisted GPS
	- increase GPS sensitivity

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

- ultra-wideband

### Detecting Objects
- optical
	- visible light
	- infrared

- radar
- lidar
- sonar
	- ultrasound

- laser rangefinder

### Pathfinding and AI
- https://en.wikipedia.org/wiki/Pathfinding
- http://www.mil.ufl.edu/publications/fcrar00/tobias.pdf
- Dijkstra's algorithm
- A* algorithm
- D* algorithm
- jump point search (http://users.cecs.anu.edu.au/~dharabor/data/papers/harabor-grastien-aaai11.pdf)
- https://en.wikipedia.org/wiki/Tree_traversal
- https://en.wikipedia.org/wiki/Graph_traversal

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
"RCAPA General Guidelines." Remote Control Aerial Photography Association, n.d. Web. 08 Oct. 2013. [http://www.rcapa.net/guidelines.aspx](http://www.rcapa.net/guidelines.aspx).

"Fact Sheet - Unmanned Aircraft Systems (UAS)." Federal Aviation Administration, July 2011. Web. 08 Oct. 2013. [http://www.faa.gov/about/initiatives/uas/media/UAS_FACT_Sheet.pdf](http://www.faa.gov/about/initiatives/uas/media/UAS_FACT_Sheet.pdf).

Van Vuren, R. J. "Model Aircraft Operating Standards." Federal Aviation Administration, 9 June 1981. Web. 08 Oct. 2013. [http://www.faa.gov/documentLibrary/media/Advisory_Circular/91-57.pdf](http://www.faa.gov/documentLibrary/media/Advisory_Circular/91-57.pdf).