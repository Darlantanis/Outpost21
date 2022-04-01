//Outpost map defs
#define Z_LEVEL_OUTPOST_CENTCOM						1
#define Z_LEVEL_OUTPOST_BASEMENT					2
#define Z_LEVEL_OUTPOST_SURFACE						3
#define Z_LEVEL_OUTPOST_UPPER						4
//#define Z_LEVEL_OUTPOST_MISC 						5
//Ensure these stay updated with map and z-level changes - Ignus

/datum/map/outpost
	name = "Outpost 21"
	full_name = "ESHUI Atmospheric Terraforming Outpost 21"
	path = "outpost"

	lobby_icon = 'icons/misc/title_yw.dmi'
	lobby_screens = list("cryogaia2")

	zlevel_datum_type = /datum/map_z_level/outpost

	station_name  = "ESHUI Atmospheric Terraforming Outpost 21"
	station_short = "Outpost 21"
	dock_name     = "Central Command Bunker"
	boss_name     = "Central Command"
	boss_short    = "CentCom"
	company_name  = "ESHUI"
	company_short = "ES"
	starsys_name  = "SL-340"

	shuttle_docked_message = "The scheduled elevator to the %dock_name% has arrived at the station. It will depart in approximately %ETD%."
	shuttle_leaving_dock = "The crew transfer elevator has left the station. Estimate %ETA% until the elevator arrives at the %dock_name%."
	shuttle_called_message = "A crew transfer to the %dock_name% has been scheduled. The elevator has been called. Those leaving should proceed to departure bay in approximately %ETA%."
	shuttle_recall_message = "The scheduled crew transfer has been cancelled."
	emergency_shuttle_docked_message = "The emergency bunker elevator has arrived at the station. You have approximately %ETD% to board the bunker elevator."
	emergency_shuttle_leaving_dock = "The emergency elevator has left the station. Estimate %ETA% until it arrives at the %dock_name%."
	emergency_shuttle_called_message = "An emergency evacuation elevator has been called. It will arrive at the departure bay in approximately %ETA%."
	emergency_shuttle_recall_message = "The emergency elevator has been recalled."

	station_networks = list(
							NETWORK_CARGO,
							NETWORK_CIVILIAN,
							NETWORK_COMMAND,
							NETWORK_ENGINE,
							NETWORK_ENGINEERING,
							NETWORK_DEFAULT,
							NETWORK_MEDICAL,
							NETWORK_RESEARCH,
							NETWORK_RESEARCH_OUTPOST,
							NETWORK_ROBOTS,
							NETWORK_PRISON,
							NETWORK_SECURITY,
							NETWORK_INTERROGATION
							)

	secondary_networks = list(
							NETWORK_ERT,
							NETWORK_MERCENARY,
							NETWORK_THUNDER,
							NETWORK_COMMUNICATORS,
							NETWORK_ALARM_ATMOS,
							NETWORK_ALARM_POWER,
							NETWORK_ALARM_FIRE
							)

	allowed_spawns = list("Elevator", "Cyborg Storage")


/datum/map/outpost/perform_map_generation()
	new /datum/random_map/automata/cave_system(null, 1, 1, Z_LEVEL_OUTPOST_BASEMENT, world.maxx, world.maxy) // Create the mining Z-level.
	new /datum/random_map/noise/ore(null, 1, 1, Z_LEVEL_OUTPOST_BASEMENT, 64, 64)         // Create the mining ore distribution map.

	new /datum/random_map/automata/cave_system(null, 1, 1, Z_LEVEL_OUTPOST_SURFACE, world.maxx, world.maxy) // Create the mining Z-level.
	new /datum/random_map/noise/ore(null, 1, 1, Z_LEVEL_OUTPOST_SURFACE, 64, 64)         // Create the mining ore distribution map.

	new /datum/random_map/automata/cave_system(null, 1, 1, Z_LEVEL_OUTPOST_UPPER, world.maxx, world.maxy) // Create the mining Z-level.
	new /datum/random_map/noise/ore(null, 1, 1, Z_LEVEL_OUTPOST_UPPER, 64, 64)         // Create the mining ore distribution map.
	return 1

/datum/map_z_level/outpost/centcom
	z = Z_LEVEL_OUTPOST_CENTCOM
	name = "CentCom"
	flags = MAP_LEVEL_ADMIN|MAP_LEVEL_CONTACT|MAP_LEVEL_XENOARCH_EXEMPT|MAP_LEVEL_SEALED
	base_turf = /turf/simulated/open //TODO: Set to lava when I remember the damn object path

/datum/map_z_level/outpost/basement
	z = Z_LEVEL_OUTPOST_BASEMENT
	name = "Basement"
	flags = MAP_LEVEL_STATION|MAP_LEVEL_CONTACT|MAP_LEVEL_PLAYER|MAP_LEVEL_CONSOLES|MAP_LEVEL_SEALED|MAP_LEVEL_PERSIST
	base_turf = /turf/simulated/open

/datum/map_z_level/outpost/main
	z = Z_LEVEL_OUTPOST_SURFACE
	name = "Main"
	flags = MAP_LEVEL_STATION|MAP_LEVEL_CONTACT|MAP_LEVEL_PLAYER|MAP_LEVEL_CONSOLES|MAP_LEVEL_SEALED|MAP_LEVEL_PERSIST
	base_turf = /turf/simulated/open
	transit_chance = 5

/datum/map_z_level/outpost/upper
	z = Z_LEVEL_OUTPOST_UPPER
	name = "Upper"
	flags = MAP_LEVEL_STATION|MAP_LEVEL_CONTACT|MAP_LEVEL_PLAYER|MAP_LEVEL_CONSOLES|MAP_LEVEL_SEALED|MAP_LEVEL_PERSIST
	base_turf = /turf/simulated/open
	transit_chance = 5
/*
/datum/map_z_level/outpost/misc
	z = Z_LEVEL_OUTPOST_MISC
	name = "Misc"
	flags = MAP_LEVEL_ADMIN|MAP_LEVEL_CONTACT|MAP_LEVEL_XENOARCH_EXEMPT|MAP_LEVEL_SEALED
	base_turf = /turf/simulated/space
*/

/*
/datum/map_z_level/northern_star/abandoned_asteroid
	z = Z_LEVEL_ABANDONED_ASTEROID_NORTHERN_STAR
	name = "Abandoned Asteroid"
	flags = MAP_LEVEL_PLAYER
	transit_chance = 15
	base_turf = /turf/simulated/mineral/floor

/datum/map_z_level/northern_star/mining
	z = Z_LEVEL_MINING_NORTHERN_STAR
	name = "Mining"
	flags = MAP_LEVEL_STATION|MAP_LEVEL_CONTACT|MAP_LEVEL_PLAYER
	transit_chance = 10
	base_turf = /turf/simulated/mineral/floor

/datum/map_z_level/northern_star/empty
	z = Z_LEVEL_EMPTY_NORTHERN_STAR
	name = "Empty"
	flags = MAP_LEVEL_PLAYER
	transit_chance = 60
*/

//Unit test stuff.

/datum/unit_test/zas_area_test/supply_centcomm
	name = "ZAS: Supply Shuttle (CentCom)"
	area_path = /area/supply/dock

/datum/unit_test/zas_area_test/emergency_shuttle
	name = "ZAS: Emergency Elevator"
	area_path = /area/shuttle/escape/centcom

/datum/unit_test/zas_area_test/ai_chamber
	name = "ZAS: AI Chamber"
	area_path = /area/ai

/datum/unit_test/zas_area_test/cargo_maint
	name = "ZAS: Cargo Maintenance"
	area_path = /area/maintenance/cargo

/datum/unit_test/zas_area_test/virology
	name = "ZAS: Virology"
	area_path = /area/medical/virology

/datum/unit_test/zas_area_test/xenobio
	name = "ZAS: Xenobiology"
	area_path = /area/rnd/xenobiology
/*
/datum/unit_test/zas_area_test/mining_area
	name = "ZAS: Mining Area (Vacuum)"
	area_path = /area/mine/explored
	expectation = UT_VACUUM
*/
/datum/unit_test/zas_area_test/cargo_bay
	name = "ZAS: Cargo Bay"
	area_path = /area/quartermaster/storage