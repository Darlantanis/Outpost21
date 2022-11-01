// put all map-specific areas here for ease of use and not cluttering a thousand other maps - Ignus
/area/muriki // area/outpost was already in use, so we're using the planet's name.
	icon = 'icons/turf/areas_vr.dmi'
	icon_state = "deck1"
	sound_env = STANDARD_STATION

//Station! Y'know, the important stuff.
//
// Atmospherics ---------------------------------------------------------------------
//
/area/engineering/atmoshall
	name = "\improper Atmospherics Hallway"
	icon_state = "atmos"

/area/muriki/atmos/voxdump
	name = "\improper Hazardous Gas Filtration Substation"
	icon_state = "yelblacir"
	ambience = AMBIENCE_ATMOS

//Processor. Our station is cool enough to have a giant vore eldrich horror for a terraforming station.
/area/muriki/processor
	name = "\improper Core Terraformer Processing"
	icon = 'icons/turf/areas.dmi'
	icon_state = "blue"
	flags = RAD_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT
	sound_env = SPACE
	ambience = AMBIENCE_MEATZONE
	music = 'sound/ambience/approaching_planet.ogg'
	requires_power = FALSE

/area/muriki/processor/euth
	name = "\improper Processor Euthanization"
	icon_state = "nuke_storage"
	sound_env = SMALL_ENCLOSED
	ambience = AMBIENCE_FOREBODING
	music = 'sound/ambience/ambimine.ogg'
//Hallways... I guess?
/area/muriki/processor/hall
	name = "\improper Core Processor Cavities"
	icon_state = "anohallway"

/area/muriki/processor/hall/airmix
	name = "\improper Terraformer Alveolar duct"

/area/muriki/processor/hall/waterway_upper
	name = "\improper Terraformer Upper Jejunum"

/area/muriki/processor/hall/waterway_low
	name = "\improper Terraformer Lower Jejunum"

/area/muriki/processor/hall/waterway_other
	name = "\improper Terraformer Ileum"

//Glands
/area/muriki/processor/gland
	name = "\improper Terraformer Gaseous Glands"
	icon_state = "green"

/area/muriki/processor/gland/space
	name = "\improper Terraformer Inhallation Gland"

/area/muriki/processor/gland/airmix
	name = "\improper Terraformer Primary Enzyme Cavity" //Technically a pool, but it makes more sense here.

/area/muriki/processor/gland/nitrogen
	name = "\improper Terraformer Common Nitrogen Duct"

/area/muriki/processor/gland/co2
	name = "\improper Terraformer Carbon Dioxide Bladder"

/area/muriki/processor/gland/phoron
	name = "\improper Terraformer Phoronic Sack"

//Pools.. don't swim in these.
/area/muriki/processor/pools
	name = "\improper Terraformer Enzomatic Pools"
	icon_state = "yellow"

/area/muriki/processor/pools/pylorus
	name = "\improper Terraformer Pyloric Pool"

/area/muriki/processor/pools/antrum
	name = "\improper Terraformer Antrum Pool"

/area/muriki/processor/pools/crop
	name = "\improper Terraformer Crop"

/area/muriki/processor/pools/cropbig
	name = "\improper Terraformer Greater Crop"

/area/muriki/processor/pools/gizzard //Note to medical: Don't even bother rescuing anyone in here.
	name = "\improper Terraformer Gizzard"

/area/muriki/processor/pools/eastfund
	name = "\improper Terraformer Eastern Fundic Pool"

/area/muriki/processor/pools/westfund
	name = "\improper Terraformer Western Fundic Pool"

//
//Bathrooms. Each department's has a unique ending name, for humor, and navigation.
//
/area/muriki/bathroom
	name = "\improper Bathroom. Don't use."
	icon_state = "cyablatri"
	sound_env = SMALL_ENCLOSED
	flags = RAD_SHIELDED

/area/muriki/bathroom/atmospherics
	name = "\improper Atmospherics Latrine"

/area/muriki/bathroom/bar
	name = "\improper Bar Head"

/area/muriki/bathroom/bridge
	name = "\improper Privy"

/area/muriki/bathroom/captain
	name = "\improper Oval Office"

/area/muriki/bathroom/cargo
	name = "\improper Main Cargo Bog"

/area/muriki/bathroom/cargopub
	name = "\improper Cargo Public Restroom"

/area/muriki/bathroom/cargolower
	name = "\improper Lower Cargo Bog"

/area/muriki/bathroom/chapel
	name = "\improper Chapel Pilgrimage"

/area/muriki/bathroom/courthouse
	name = "\improper Dreadbox"

/area/muriki/bathroom/dorm
	name = "\improper Pool Restroom"

/area/muriki/bathroom/engineering
	name = "\improper Engineering Latrine"

/area/muriki/bathroom/engsingle
	name = "\improper Engineering Lobby Latrine"

/area/muriki/bathroom/kitchen
	name = "\improper Kitchen Comode"

/area/muriki/bathroom/medical
	name = "\improper Medical Depository"

/area/muriki/bathroom/medupper
	name = "\improper Recovery Depository"

/area/muriki/bathroom/sanitorium
	name = "\improper Sanitorium"

/area/muriki/bathroom/sciupper
	name = "\improper Science Lavatory"

/area/muriki/bathroom/scilower
	name = "\improper Lower Science Lavatory"

/area/muriki/bathroom/security
	name = "\improper Security Thunderbox"

/area/muriki/bathroom/securitypub
	name = "\improper Arrivals Restroom"

/area/muriki/bathroom/vox
	name = "\improper Vomit Closet"

//
// Cargo ---------------------------------------------------------
//
/area/quartermaster/breakroom
	name = "\improper Cargo Break Room"
	icon_state = "orawhicir"
	sound_env = SMALL_SOFTFLOOR

/area/quartermaster/mining/
	name = "\improper Mining Department"

/area/quartermaster/mining/prep
	name = "\improper Mining Equipment Storage"

/area/quartermaster/mining/expl
	name = "\improper Exploration Equipment"

/area/quartermaster/mining/secpi
	name = "\improper Exploration Security"
	icon_state = "security_equip_storage"

/area/quartermaster/mining/processing
	name = "\improper Ore Processing"
	ambience = AMBIENCE_ENGINEERING

/area/quartermaster/mining/firstaid
	name = "\improper Mining First Aid"
	icon_state = "medbay2"

/area/muriki/septic
	name = "\improper Septic Tank"
	icon_state = "green"

/area/muriki/yard
	name = "\improper The Yard"
	icon_state = "yelwhicir"

/area/muriki/station/trawler_dock
	name = "\improper Mining trawler Landing Pad"
	icon_state = "orablasqu"

//
// Civilian ---------------------------------------------------------
//
/area/muriki/arriveelev
	name = "\improper Arrivals Elevators"
	icon_state = "shuttle"
	ambience = AMBIENCE_GENERIC

/area/muriki/arriveproc
	name = "\improper Arrivals Processing"
	icon_state = "blublacir"
	ambience = AMBIENCE_GENERIC

/area/muriki/arrivejani
	name = "\improper Arrivals Janitorial Closet"
	icon_state = "cyablasqu"
	sound_env = SMALL_ENCLOSED

/area/muriki/janiextra
	name = "\improper Overflow Janitorial Closet"
	icon_state = "cyablasqu"
	sound_env = SMALL_ENCLOSED

/area/muriki/crew/
	name = "\improper Crew Area"
	icon_state = "cyawhicir"
	ambience = AMBIENCE_GENERIC

/area/muriki/crew/arcade
	name = "\improper Arcade"
	icon_state = "cyawhicir"

/area/muriki/crew/barback
	name = "\improper Bartender Backroom"
	icon_state = "cyawhicir"

/area/muriki/crew/arcade/lasertag
	name = "\improper Laser Tag Arena"
	icon_state = "purwhitri"

/area/muriki/crew/arcade/lasertagstore
	name = "\improper Laser Tag Storage"
	icon_state = "purwhicir"

/area/muriki/crew/sauna1
	name = "\improper Sauna Room One"
	icon_state = "bluewnew"
	sound_env = SMALL_SOFTFLOOR

/area/muriki/crew/sauna2
	name = "\improper Sauna Room Two"
	icon_state = "bluewnew"
	sound_env = SMALL_SOFTFLOOR

/area/muriki/crew/poollocker
	name = "\improper Pool Showers"
	icon_state = "locker"
	sound_env = MEDIUM_SOFTFLOOR

/area/muriki/crew/judge
	name = "\improper Judge's Office"
	icon_state = "bluenew"
	sound_env = SMALL_ENCLOSED

/area/muriki/crew/glass
	name = "\improper Dorm Dayroom"
	icon_state = "recreation_area"
	sound_env = SMALL_ENCLOSED

/area/muriki/crew/dormaid
	name = "\improper Dorm First Aid Station"
	icon_state = "medbay2"
	sound_env = SMALL_ENCLOSED

/area/muriki/crew/baraid
	name = "\improper Public First Aid Station"
	icon_state = "medbay2"
	sound_env = SMALL_ENCLOSED

/area/chapel/chapel_music
	name = "\improper Music Room"
	icon_state = "yellow"

//Hallways-------
/area/muriki/crewstairwell
	name = "\improper Civilian Stairwell"
	icon_state = "bluenew"
	music = 'sound/ambience/signal.ogg'
	sound_env = TUNNEL_ENCLOSED

/area/hallway/muriki/dorm
	name = "\improper Dorm Hallway"
	icon_state = "bluewnew"

/area/hallway/muriki/civup
	name = "\improper Civilian Upper Hallway"
	icon_state = "bluenew"

/area/hallway/security/main
	name = "\improper Security Main Hallway"
	icon_state = "blue"

/area/hallway/security/armor
	name = "\improper Security Armory Hallway"
	icon_state = "red2"

/area/hallway/security/upper
	name = "\improper Security Upper Hallway"
	icon_state = "blue"

//Hydro-------
/area/muriki/crew/kitchenfreezer
	name = "\improper Kitchen Freezer"
	icon_state = "bluewnew"

/area/hydroponics/publicgarden
	name = "\improper Public Garden"
	icon_state = "cafe_garden"

/area/hydroponics/apiary
	name = "\improper Hydroponics Aipiary"
	icon_state = "hydro"

/area/hydroponics/hallway
	name = "\improper Hydroponics Hallway"
	icon_state = "center"

/area/hydroponics/gibber //Watch your step~
	name = "\improper Hydroponics Gibber Deposit"
	icon_state = "red2"

//
// Engineering -----------------------------------------------------
//
/area/engineering/trammaint
	name = "\improper Tram Maintenance Room"
	icon_state = "engineering"
	sound_env = LARGE_ENCLOSED

/area/engineering/hardsuitstore
	name = "\improper Engineering Hardsuit Storage"
	icon_state = "eva"

/area/engineering/enginestorage
	name = "\improper Engine Storage"
	icon_state = "primarystorage"

/area/engineering/auxstore
	name = "\improper Engineering Aux Storage"
	icon_state = "auxstorage"

/area/engineering/corepower
	name = "\improper Engine Generator"
	icon_state = "engine"

/area/engineering/eva
	name = "\improper Engineering Exterior Access"
	icon_state = "eva"

/area/engineering/gravgen
	name = "\improper Elevator Gravity Assist"
	icon_state = "maint_pumpstation"

/area/engineering/coreproctunnel
	name = "\improper Core Processor Atmo Tunnel"
	icon_state = "darkred"
	sound_env = TUNNEL_ENCLOSED
	ambience = AMBIENCE_FOREBODING
	music = 'sound/ambience/ambimine.ogg'

//them dat der bluespezz warpy magic
/area/teleporter/engineering
	name = "\improper Engineering Teleporter"

/area/teleporter/bridge
	name = "\improper Bridge Teleporter"


//
// Elevator -------------------------------------------------------
// mapping areas
/area/muriki/elevator/secbase
	name = "Security Sublevel 1"
	flags = AREA_FLAG_IS_NOT_PERSISTENT
/area/muriki/elevator/secmain
	name = "Security First Floor"
	flags = AREA_FLAG_IS_NOT_PERSISTENT
/area/muriki/elevator/secupper
	name = "Security Second Floor"
	flags = AREA_FLAG_IS_NOT_PERSISTENT
/area/muriki/elevator/medibasement
	name = "Medbay Sublevel 1"
	flags = AREA_FLAG_IS_NOT_PERSISTENT
/area/muriki/elevator/medical
	name = "Medbay First Floor"
	flags = AREA_FLAG_IS_NOT_PERSISTENT
/area/muriki/elevator/mediupper
	name = "Medbay Second Floor"
	flags = AREA_FLAG_IS_NOT_PERSISTENT
/area/muriki/elevator/civbase
	name = "Civilian Sublevel 1"
	flags = AREA_FLAG_IS_NOT_PERSISTENT
/area/muriki/elevator/civmain
	name = "Civilian First Floor"
	flags = AREA_FLAG_IS_NOT_PERSISTENT
/area/muriki/elevator/civupper
	name = "Civilian Second Floor"
	flags = AREA_FLAG_IS_NOT_PERSISTENT
/area/muriki/elevator/scibase
	name = "Science Sublevel 1"
	flags = AREA_FLAG_IS_NOT_PERSISTENT
/area/muriki/elevator/scimain
	name = "Science First Floor"
	flags = AREA_FLAG_IS_NOT_PERSISTENT
/area/muriki/elevator/sciupper
	name = "Science Second Floor"
	flags = AREA_FLAG_IS_NOT_PERSISTENT

// finalized elevator areas, lift itself makes these once init
/area/turbolift
	delay_time = 2 SECONDS
	forced_ambience = list('sound/music/elevator2.ogg')
	dynamic_lighting = FALSE //Temporary fix for elevator lighting
	flags = RAD_SHIELDED
	requires_power = FALSE

//SECURITY
/area/turbolift/secbase
	name = "Security Sublevel 1"
	lift_floor_label = "Security Basement"
	lift_floor_name = "Brig."
	lift_announce_str = "Arriving at Security Basement."

/area/turbolift/secmain
	name = "Security First Floor"
	lift_floor_label = "Security Main"
	lift_floor_name = "Primary Security."
	lift_announce_str = "Arriving at Security Primary."

/area/turbolift/secupper
	name = "Security Second Floor"
	lift_floor_label = "Security High Level"
	lift_floor_name = "AI, Telecoms, Evac shuttle."
	lift_announce_str = "Arriving at Security Upper Floor."

//MEDICAL
/area/turbolift/medibasement
	name = "Medbay Sublevel 1"
	lift_floor_label = "Medical Basement"
	lift_floor_name = "Vox Treatment, Morgue, Surgery Training, Cavern Access."
	lift_announce_str = "Arriving at Medical Basement."

/area/turbolift/medical
	name = "Medbay First Floor"
	lift_floor_label = "Medbay"
	lift_floor_name = "Lobby, Surgery, Primary Treatment, Psychology."
	lift_announce_str = "Arriving at Medbay Primary."

/area/turbolift/mediupper
	name = "Medbay Second Floor"
	lift_floor_label = "Medical Recovery"
	lift_floor_name = "Resleeving, CMO, Checkup, Recovery ward, Hangar."
	lift_announce_str = "Arriving at Medical Loft."

//Civilian
/area/turbolift/civbase
	name = "Civilian Sublevel 1"
	lift_floor_label = "Basement"
	lift_floor_name = "Cafe, Pool, Dorms, Arcade, Cavern Access."
	lift_announce_str = "Arriving at Basement."

/area/turbolift/civmain
	name = "Civilian First Floor"
	lift_floor_label = "First Floor"
	lift_floor_name = "Bar, Bridge, Evac Hallway."
	lift_announce_str = "Arriving at First Floor."

/area/turbolift/civupper
	name = "Civilian Second Floor"
	lift_floor_label = "Second Floor"
	lift_floor_name = "Chapel, Library, Garden."
	lift_announce_str = "Arriving at Second Floor."

//Science
/area/turbolift/scibase
	name = "Science Sublevel 1"
	lift_floor_label = "Research Basement"
	lift_floor_name = "Xenobio, Particle lab, Xenoarch, Cavern Access"
	lift_announce_str = "Arriving at Basement."

/area/turbolift/scimain
	name = "Science First Floor"
	lift_floor_label = "Research First Floor"
	lift_floor_name = "RnD, Robotics, RD."
	lift_announce_str = "Arriving at First Floor."

/area/turbolift/sciupper
	name = "Science Second Floor"
	lift_floor_label = "Research Second Floor"
	lift_floor_name = "Telesci, Xenoflora."
	lift_announce_str = "Arriving at Second Floor."

//
//----------------- Exterior / hazard areas / mine ---------------------------------
//
/area/muriki/grounds //Non dangerous variant, for inside the fence
	name = "\improper Facility Grounds"
	icon_state = "dark"
	sound_env = SOUND_ENVIRONMENT_MOUNTAINS
	music = 'sound/ambience/ambiatm1.ogg'

/area/muriki/grounds/graveyard
	name = "\improper Facility Graveyard"
	icon_state = "outside1"

/area/muriki/grounds/terraform
	name = "\improper Facility Terraformer Base"
	icon_state = "outside2"

/area/muriki/grounds/engi
	name = "\improper Facility Near Engineering"
	icon_state = "orablatri"

/area/muriki/grounds/waste
	name = "\improper Facility Near Waste Management"
	icon_state = "orablatri"

/area/muriki/grounds/sec
	name = "\improper Facility Near Security"
	icon_state = "redblatri"

/area/muriki/grounds/med
	name = "\improper Facility Near Medical"
	icon_state = "cyablatri"

/area/muriki/grounds/shutt
	name = "\improper Facility Shuttle Pads"
	icon_state = "deck1"

/area/muriki/grounds/civ
	name = "\improper Facility Near Civilian Structure"
	icon_state = "bluwhitri"

/area/muriki/grounds/sci
	name = "\improper Facility Near Science"
	icon_state = "purblatri"

/area/muriki/grounds/tramborder
	name = "\improper Tram Line Edge"
	icon_state = "redwhicir"

/area/muriki/grounds/tramlineeast
	name = "\improper Eastern Tram Line"
	icon_state = "redblasqu"

/area/muriki/grounds/tramlinewest
	name = "\improper Western Tram Line"
	icon_state = "redblatri"

//Mine variants for mob spawns.
/area/mine/explored/muriki/surface
	name = "\improper Facility Grounds"
	sound_env = SOUND_ENVIRONMENT_MOUNTAINS
	music = 'sound/ambience/ambiatm1.ogg'

/area/mine/unexplored/muriki/surface
	name = "\improper Facility Grounds"
	sound_env = SOUND_ENVIRONMENT_MOUNTAINS
	music = 'sound/ambience/ambiatm1.ogg'

/area/mine/explored/muriki/cave
	name = "\improper Facility Tunnels"
	sound_env = TUNNEL_ENCLOSED

/area/mine/unexplored/muriki/cave
	name = "\improper Muriki Caverns"
	sound_env = TUNNEL_ENCLOSED

//Subdivided areas because holy crap zas hates our map.
//Basement. Dept.
/area/mine/explored/muriki/cave/eng
	name = "\improper Facility Engineering Tunnels"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "orange"
/area/mine/unexplored/muriki/cave/eng
	name = "\improper Muriki Caverns Near Engineering"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "orange"

/area/mine/explored/muriki/cave/cargo
	name = "\improper Muriki Cargo Isle Caverns"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "yellow"
/area/mine/unexplored/muriki/cave/cargo
	name = "\improper Muriki Caverns Near Cargo"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "yellow"

/area/mine/explored/muriki/cave/waste
	name = "\improper Muriki Waste Processing Caves"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "green"
/area/mine/unexplored/muriki/cave/waste
	name = "\improper Muriki Caverns Near Waste"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "green"

/area/mine/explored/muriki/cave/sec
	name = "\improper Muriki Security Caverns"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "darkred"
/area/mine/unexplored/muriki/cave/sec
	name = "\improper Muriki Caverns Near Security"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "darkred"

/area/mine/explored/muriki/cave/med
	name = "\improper Muriki Medical Caverns"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "bluenew"
/area/mine/unexplored/muriki/cave/med
	name = "\improper Muriki Caverns Near Medical"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "bluenew"

/area/mine/explored/muriki/cave/sci
	name = "\improper Muriki Research Caverns"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "purple"
/area/mine/unexplored/muriki/cave/sci
	name = "\improper Muriki Caverns Near Research"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "purple"

/area/mine/explored/muriki/cave/civ
	name = "\improper Muriki Civilian Caverns"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "dark128"
/area/mine/unexplored/muriki/cave/civ
	name = "\improper Muriki Caverns Near Civilian"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "dark128"

//fillers
/area/mine/unexplored/muriki/cave/terra
	name = "\improper Muriki Caverns Near Terraformer"
	icon_state = "cave"
	sound_env = TUNNEL_ENCLOSED

/area/mine/unexplored/muriki/cave/west
	name = "\improper Muriki Western Caverns"
	icon_state = "west"
	sound_env = TUNNEL_ENCLOSED

/area/mine/unexplored/muriki/cave/south
	name = "\improper Muriki Southern Caverns"
	icon_state = "south"
	sound_env = TUNNEL_ENCLOSED

/area/mine/unexplored/muriki/cave/east
	name = "\improper Muriki Eastern Caverns"
	icon_state = "east"
	sound_env = TUNNEL_ENCLOSED

/area/mine/unexplored/muriki/cave/north
	name = "\improper Muriki Northern Caverns"
	icon_state = "north"
	sound_env = TUNNEL_ENCLOSED

//below the mountain
/area/mine/explored/muriki/mountainbase
	name = "\improper Facility Mountain Caves"
	icon_state = "center"
	sound_env = TUNNEL_ENCLOSED

/area/mine/unexplored/muriki/mountainbase
	name = "\improper Muriki Easstern Mountain Caverns"
	icon_state = "east"
	sound_env = TUNNEL_ENCLOSED

/area/mine/unexplored/muriki/mountainbasenorth
	name = "\improper Muriki Northern Mountain Caverns"
	icon_state = "north"
	sound_env = TUNNEL_ENCLOSED

//------second floor------
/area/mine/explored/muriki/mountainnorth
	name = "\improper North Facility Mountainside"
	icon_state = "north"
	sound_env = SOUND_ENVIRONMENT_MOUNTAINS

/area/mine/explored/muriki/mountaineast
	name = "\improper Eastern Facility Mountainside"
	icon_state = "east"
	sound_env = SOUND_ENVIRONMENT_MOUNTAINS

/area/mine/unexplored/muriki/mountainnorth
	name = "\improper Muriki Northern Mountain Caverns"
	icon_state = "north"
	sound_env = TUNNEL_ENCLOSED

/area/mine/unexplored/muriki/mountaineast
	name = "\improper Muriki Eastern Mountain Caverns"
	icon_state = "east"
	sound_env = TUNNEL_ENCLOSED

/area/mine/explored/muriki/valley
	name = "\improper Valley Edge"
	icon_state = "center"
	sound_env = SOUND_ENVIRONMENT_MOUNTAINS

/area/mine/unexplored/muriki/valleyeast
	name = "\improper Muriki Lower Valley"
	icon_state = "east"
	sound_env = SOUND_ENVIRONMENT_MOUNTAINS

/area/mine/unexplored/muriki/valleywest
	name = "\improper Muriki Lower Valley"
	icon_state = "west"
	sound_env = SOUND_ENVIRONMENT_MOUNTAINS

//-------third floor--------
/area/mine/explored/muriki/mountaintopnorth
	name = "\improper North Facility Mountaintop"
	icon_state = "north"
	sound_env = SOUND_ENVIRONMENT_MOUNTAINS

/area/mine/explored/muriki/mountaintopeast
	name = "\improper Eastern Facility Mountaintop"
	icon_state = "east"
	sound_env = SOUND_ENVIRONMENT_MOUNTAINS

/area/mine/unexplored/muriki/mountaintopnorth
	name = "\improper Muriki Northern Mountaintop Caverns"
	icon_state = "north"
	sound_env = TUNNEL_ENCLOSED

/area/mine/unexplored/muriki/mountaintopeast
	name = "\improper Muriki Eastern Mountaintop Caverns"
	icon_state = "east"
	sound_env = TUNNEL_ENCLOSED

/area/muriki/crystal
	name = "\improper Muriki Crystal Den"
	icon_state = "bluwhicir"
	sound_env = TUNNEL_ENCLOSED

//Skyline
/area/muriki/skyline
	name = "\improper Facility Airspace"
	icon_state = "dark"
	sound_env = SOUND_ENVIRONMENT_MOUNTAINS
	music = 'sound/ambience/ambiatm1.ogg'

/area/muriki/skyline/east
	name = "\improper Eastern Facility Airspace"
	icon_state = "east"

/area/muriki/skyline/west
	name = "\improper Western Facility Airspace"
	icon_state = "west"

/area/muriki/skyline/north
	name = "\improper Northern Facility Airspace"
	icon_state = "north"

/area/muriki/skyline/south
	name = "\improper Southern Facility Airspace"
	icon_state = "south"

/area/muriki/skyline/cent
	name = "\improper Central Facility Airspace"
	icon_state = "center"

//Other areas in the caves
/area/mine/explored/muriki/tuggrave
	name = "\improper Tug Graveyard"
	sound_env = TUNNEL_ENCLOSED
	icon_state = "dk_yellow"

//Moon riiiiver
/area/mine/explored/muriki/river
	name = "\improper Muriki River"
	icon_state = "blue2"
	sound_env = SOUND_ENVIRONMENT_SEWER_PIPE
	music = 'sound/ambience/ruins/ruins3.ogg'

/area/mine/explored/muriki/river/mouth
	name = "\improper River Mouth"

/area/mine/explored/muriki/river/north
	name = "\improper River North"

/area/mine/explored/muriki/river/south
	name = "\improper River South"

/area/mine/explored/muriki/river/east
	name = "\improper River East"

/area/mine/explored/muriki/river/hole
	name = "\improper River Cave-in"

/area/mine/explored/muriki/river/end
	name = "\improper River Falls"

//
// Maintenance ------------------------------------------------------------
//
/area/maintenance/medicelev
	name = "\improper Medical Elevator Maintenance Shaft"
	icon_state = "maint_medbay"

/area/maintenance/secelev
	name = "\improper Security Elevator Maintenance Shaft"
	icon_state = "maint_security_port"

/area/maintenance/scielev
	name = "\improper Research Elevator Maintenance Shaft"
	icon_state = "maint_research_shuttle"

/area/maintenance/crewelev
	name = "\improper Civilian Elevator Maintenance Shaft"
	icon_state = "pmaint"

/area/maintenance/lowerelev
	name = "\improper Arrivals Elevator Shaft"
	icon_state = "dark128"

/area/maintenance/lowerevac
	name = "\improper Evac Elevator Shaft"
	icon_state = "dark128"

/area/maintenance/wastedisposal
	name = "\improper Waste Disposal Maintenance"
	icon_state = "maint_medbay"

/area/maintenance/wastenear
	name = "\improper Near Waste Maintenance"
	icon_state = "blue"

/area/maintenance/sec
	name = "\improper Near Security Maintenance"
	icon_state = "blue"

/area/maintenance/med
	name = "\improper Near Medical Maintenance"
	icon_state = "bluenew"

/area/maintenance/sci
	name = "\improper Near Science Maintenance"
	icon_state = "purple"

/area/maintenance/civ
	name = "\improper Near Civilian Maintenance"
	icon_state = "maintcentral"

/area/maintenance/eng
	name = "\improper Near Engineering Maintenance"
	icon_state = "maint_engineering"

/area/maintenance/bridge
	name = "\improper Bridge Maintenance"
	icon_state = "bluenew"

/area/maintenance/kennel
	name = "\improper Kennels Maintenance"
	icon_state = "blue"

/area/maintenance/gravgen
	name = "\improper Gravity Generator Maintenance"
	icon_state = "blue"

//Cavern maintenance
/area/maintenance/cave
	name = "\improper Facility Lower Maintenance"
	icon_state = "dark128"

/area/maintenance/spine
	name = "\improper Maintenance Spine"
	icon = 'icons/turf/areas_vr.dmi'
	icon_state = "orawhisqu"

/area/maintenance/tug
	name = "\improper Maintenance Tug Tunnel"
	icon = 'icons/turf/areas_vr.dmi'
	icon_state = "deckmaint1"

//
// Medical ------------------------------------------------------------
//
/area/medical/stairwell
	name = "\improper Medical Stairwell"
	icon_state = "bluenew"
	music = 'sound/ambience/signal.ogg'
	sound_env = TUNNEL_ENCLOSED

/area/medical/laundry
	name = "\improper Medical Laundry Room"
	icon_state = "locker"
	sound_env = SMALL_SOFTFLOOR

/area/medical/mail
	name = "\improper Medical Mailing Room"
	icon_state = "quartdelivery"
	sound_env = SMALL_SOFTFLOOR

/area/medical/locker
	name = "\improper Medical Locker Room"
	icon_state = "locker"

/area/medical/recovlaund
	name = "\improper Medical Recovery Laundry"
	icon_state = "locker"
	flags = RAD_SHIELDED

/area/medical/evastore
	name = "\improper Medical Hazop And Hardsuit Storage"
	icon_state = "locker"

/area/medical/sleevecheck
	name = "\improper Medical Resleeving Verification"
	icon_state = "medbay3"

/area/medical/checkup
	name = "\improper Medical Examination Room"
	icon_state = "medbay3"

/area/medical/surgtrain
	name = "\improper Medical Surgery Training Theater"
	icon_state = "medbay4"

/area/hallway/secondary/secmedbridge
	name = "\improper Medical Security Transfer Bridge"
	icon_state = "blue-red2"

//vox treatment: In compliance with....

/area/medical/voxlab
	name = "\improper Vox Treatment Lab"
	icon_state = "purple"
	sound_env = SMALL_ENCLOSED
	ambience = list(AMBIENCE_OTHERWORLDLY, AMBIENCE_OUTPOST)

/area/medical/voxlab/airgap
	name = "\improper Vox Treatment Airgap"

/area/medical/voxlab/airlock
	name = "\improper Vox Treatment Airlock"

/area/medical/voxlab/lobby
	name = "\improper Vox Treatment Lobby"
	icon_state = "decontamination"

/area/medical/voxlab/main
	name = "\improper Vox Treatment Lab"
	icon_state = "medbay_triage"

/area/medical/voxlab/storage
	name = "\improper Vox Treatment Storage"
	icon_state = "storage"

/area/medical/voxlab/surgery
	name = "\improper Vox Surgery"
	icon_state = "surgery"

/area/medical/voxlab/chem
	name = "\improper Vox Chemistry Lab"
	icon_state = "chem"

/area/medical/voxlab/recov
	name = "\improper Vox Recovery"
	icon_state = "Sleep"

/area/medical/voxlab/breakroom
	name = "\improper Vox Lab Breakroom"
	icon_state = "bar"

/area/medical/hangar
	name = "\improper Medevac Shuttle Hangar"
	icon_state = "medical"

//
// Rooftops-----------------------------------------------------------------------
//
/area/muriki/rooftop
	name = "\improper Rooftop"
	icon = 'icons/turf/areas.dmi'
	icon_state = "away"
	sound_env = SOUND_ENVIRONMENT_MOUNTAINS
	music = 'sound/ambience/ambiatm1.ogg'

/area/muriki/rooftop/engineering
	name = "\improper Engineering Roof"
	icon_state = "away4"

/area/muriki/rooftop/cargo
	name = "\improper Cargo Roof"
	icon_state = "away"

/area/muriki/rooftop/disposal
	name = "\improper Waste Management Roof"
	icon_state = "away"

/area/muriki/rooftop/medical
	name = "\improper Medical Roof"
	icon_state = "away1"

/area/muriki/rooftop/security
	name = "\improper Security Roof"
	icon_state = "away3"

/area/muriki/rooftop/science
	name = "\improper Science Roof"
	icon_state = "away2"

/area/muriki/rooftop/civilian
	name = "\improper Civilian Roof"
	icon_state = "away"

//
// Security-----------------------------------------------------------------------
//
/area/security/brig/low
	name = "\improper Security Low Security Brig"
	icon_state = "brig"

/area/security/brig/drunk
	name = "\improper Security Drunktank"
	icon_state = "brig"

/area/security/brig/isolate
	name = "\improper Security Solitary Confinement"
	icon_state = "brig"

/area/security/tankstore
	name = "\improper Security Heavy Armor Storage"
	icon_state = "security_sub"

/area/security/mechent
	name = "\improper Security Mech Entrance"
	icon_state = "security_sub"

/area/security/kennels
	name = "\improper Security Kennels"
	icon_state = "red2"

/area/security/eva
	name = "\improper Security External Access"
	icon_state = "red2"

/area/security/stairwell
	name = "\improper Security Stairwell"
	icon_state = "red2"
	sound_env = TUNNEL_ENCLOSED

/area/security/hangar
	name = "\improper Security hangar"
	icon_state = "red2"
	sound_env = LARGE_ENCLOSED

//
// Science-----------------------------------------------------------------------
//
/area/constructionsite/science2
	name = "\improper Research Construction Site"
	icon_state = "construction"

/area/rnd
	name = "\improper Research"
	icon = 'icons/turf/areas.dmi'
	icon_state = "purple"

/area/rnd/chemistry
	name = "\improper Research Backup Chemistry"
	icon_state = "chem"

/area/rnd/breakroom
	name = "\improper Research Breakroom"
	icon_state = "locker"

/area/rnd/lockers
	name = "\improper Research Locker Room"
	icon_state = "locker"

/area/rnd/entry
	name = "\improper Research Entryway Decontamination"
	icon_state = "decontamination"

/area/rnd/stairwell
	name = "\improper Science Stairwell"
	icon_state = "purple"
	sound_env = TUNNEL_ENCLOSED

/area/rnd/otherlab
	name = "\improper RnD Auxillary Laboratory"
	icon_state = "outpost_research"

/area/rnd/telesci
	name = "\improper Research Telescience"
	icon_state = "teleporter"

/area/rnd/xenobiology/xenoflora2
	name = "\improper Xenoflora Hazard Lab"
	icon_state = "xeno_f_lab"

/area/rnd/xenobiology/xenobioh
	name = "\improper Hazardous Xenobiology Lab"
	icon_state = "xeno_f_lab"

/area/rnd/xenobiology/xenobiohstore
	name = "\improper Hazardous Xenobiology Storage"
	icon_state = "research_storage"

/area/rnd/xenobiology/lost
	name = "\improper Abandoned Xenobiology Lab"
	icon_state = "blue"

/area/rnd/xenobiology/burn
	name = "\improper Xenobiology Threat Supression"
	icon_state = "red2"

/area/rnd/research/atmosia
	name = "\improper Research Scrubber Filtration"

/area/rnd/research/analysis
	name = "\improper Research Sample Analysis"

/area/rnd/research/anomaly
	name = "\improper Anomalous Materials Lab"

/area/rnd/research/medical
	name = "\improper Xenolab First aid"

/area/rnd/research/isolation_a
	name = "\improper Research Isolation 1"

/area/rnd/research/isolation_b
	name = "\improper Research Isolation 2"

/area/rnd/research/isolation_c
	name = "\improper Research Isolation 3"

/area/rnd/research/longtermstorage
	name = "\improper Xenolab Long-Term Storage"

/area/rnd/research/anomaly_storage
	name = "\improper Xenolab Anomalous Storage"

/area/rnd/research/anomaly_analysis
	name = "\improper Xenolab Anomaly Analysis"

/area/rnd/research/exp_prep
	name = "\improper Xenolabt Expedition Preperation"

/area/rnd/research/mailing
	name = "\improper Research Mailing"

/area/rnd/research/laundry
	name = "\improper Xenolab Laundry"

/area/rnd/research/breakroom
	name = "\improper Research Break Room"

//----------------
/area/rnd/hallway
	name = "\improper Research hallway"
	icon_state = "hallC"
	sound_env = LARGE_ENCLOSED

/area/rnd/hallway/main
	name = "\improper Primary Research hallway"
	icon_state = "hallC"

/area/rnd/hallway/upper
	name = "\improper Upper Research hallway"
	icon_state = "hallC"

/area/rnd/hallway/lowmain
	name = "\improper Lower Main Research hallway"
	icon_state = "hallC"

/area/rnd/hallway/xeno
	name = "\improper Xenoarch hallway"
	icon_state = "hallC"

/area/rnd/hallway/hazard
	name = "\improper Hazardous Research hallway"
	icon_state = "hallC"

/area/rnd/hallway/staircase
	name = "\improper Research Stairwell"
	icon_state = "purple"

/area/muriki/research/isolation_hall
	name = "Research Isolation Hall"

//
//-----------------------------------------------------------------------
//Offworld

/area/offworld/asteroidyard/station/
	sound_env = SMALL_ENCLOSED
	ambience = AMBIENCE_MAINTENANCE

/area/offworld/asteroidyard/external
	name = "\improper Reclamation Yard Exterior"
	icon_state = "red2"
	has_gravity = 0
	ambience = AMBIENCE_OUTPOST21_SPACE
	base_turf = /turf/space
	ambience = AMBIENCE_SPACE

/area/offworld/asteroidyard/external/yardzone
	icon_state = "construction"

/area/offworld/asteroidyard/station/halls
	name = "\improper Reclamation Yard Hallway"
	icon_state = "purple"

/area/offworld/asteroidyard/station/halls_storage
	name = "\improper Reclamation Yard Hallway"
	icon_state = "green"

/area/offworld/asteroidyard/station/halls_bar
	name = "\improper Reclamation Yard Hallway"
	icon_state = "orange"

/area/offworld/asteroidyard/station/access_shaft
	name = "\improper Reclamation Yard Access Shaft"
	icon_state = "red"

/area/offworld/asteroidyard/station/washing
	name = "\improper Reclamation Yard Cleaning Room"
	icon_state = "red"

/area/offworld/asteroidyard/station/dockingbay
	name = "\improper Reclamation Yard Hanger"
	icon_state = "decontamination"
	sound_env = LARGE_ENCLOSED
	ambience = AMBIENCE_HANGAR

/area/offworld/asteroidyard/station/cave
	name = "\improper Reclamation Yard Caverns"
	icon_state = "construction"
	sound_env = ASTEROID

/area/offworld/asteroidyard/station/storage
	name = "\improper Reclamation Yard Storage"
	icon_state = "locker"
	sound_env = ASTEROID

/area/offworld/asteroidyard/station/bar
	name = "\improper Reclamation Yard Bar"
	icon_state = "green"

/area/offworld/asteroidyard/station/engineering
	name = "\improper Reclamation Yard Engineering"
	icon_state = "orange"
	ambience = AMBIENCE_SUBSTATION

/area/offworld/asteroidyard/station/solarControl
	name = "\improper Reclamation Yard Solar Control"
	icon_state = "orange"
	ambience = AMBIENCE_SUBSTATION

/area/offworld/asteroidyard/station/observation
	name = "\improper Reclamation Yard Observation"
	icon_state = "blue"
	sound_env = LARGE_ENCLOSED
	ambience = AMBIENCE_FOREBODING

//
//-----------------------------------------------------------------------
//Shuttles
/area/shuttle/trawler
	name = "\improper Mining Trawler"
	icon_state = "shuttle2"
	requires_power = 1
	base_turf = /turf/simulated/floor/plating/external/muriki

/area/shuttle/medical
	name = "\improper Medevac Shuttle"
	icon_state = "shuttle2"
	requires_power = 1
	base_turf = /turf/simulated/floor

/area/shuttle/security
	name = "\improper Security Shuttle"
	icon_state = "shuttle2"
	requires_power = 1
	base_turf = /turf/simulated/floor

//
// Tramline --------------------------------------------------
//
/area/shuttle/tram
	name = "\improper Station Tram"
	icon = 'icons/turf/areas.dmi'
	icon_state = "shuttlegrn"
	base_turf = /turf/simulated/floor

/area/muriki/tramstation
	name = "\improper Tram Station"
	icon_state = "dark128"
	sound_env = LARGE_ENCLOSED
	ambience = list(AMBIENCE_ARRIVALS, AMBIENCE_HANGAR)

/area/muriki/tramstation/shed
	name = "\improper Tram Station - Shed"
	icon_state = "dark128"

/area/muriki/tramstation/waste
	name = "\improper Tram Station - Waste"
	icon_state = "dark128"

/area/muriki/tramstation/cargeng
	name = "\improper Tram Station - Cargo Engineering"
	icon_state = "dark128"

/area/muriki/tramstation/civ
	name = "\improper Tram Station - Civilian"
	icon_state = "dark128"


// Bad guys
/area/shuttle/mercenary
	name = "\improper Mercenary Vessel"
	flags = AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/skipjack
	name = "\improper Vox Vessel"
	flags = AREA_FLAG_IS_NOT_PERSISTENT
