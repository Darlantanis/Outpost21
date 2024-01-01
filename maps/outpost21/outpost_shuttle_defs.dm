//////////////////////////////////////////////////////////////
// Escape shuttle
/datum/shuttle/autodock/ferry/emergency/escape
	name = "Escape"
	location = FERRY_LOCATION_OFFSITE // At offsite
	warmup_time = 10
	docking_controller_tag = "escape_shuttle"
	shuttle_area = /area/shuttle/escape
	landmark_offsite = "escape_centcom"
	landmark_station = "escape_station"
	landmark_transition = "escape_transit"
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN
	ceiling_type = /turf/simulated/shuttle/floor/black/muriki

/obj/effect/shuttle_landmark/premade/escape/centcom
	name = "ESCC Bunker"
	landmark_tag = "escape_centcom"
	docking_controller = "centcom_dock"
	base_area = /area/space
	base_turf = /turf/space

/obj/effect/shuttle_landmark/premade/escape/transit
	name = "Elevator Shaft"
	landmark_tag = "escape_transit"

/obj/effect/shuttle_landmark/premade/escape/station
	name = "ES Outpost21"
	landmark_tag = "escape_station"
	docking_controller = "escape_dock"

//////////////////////////////////////////////////////////////
// Supply shuttle
/datum/shuttle/autodock/ferry/supply/cargo
	name = "Supply"
	location = FERRY_LOCATION_OFFSITE
	warmup_time = 10
	shuttle_area = /area/shuttle/supply
	landmark_offsite = "supply_centcom"
	landmark_station = "supply_station"
	docking_controller_tag = "supply_shuttle"
	flags = SHUTTLE_FLAGS_PROCESS|SHUTTLE_FLAGS_SUPPLY
	ceiling_type = /turf/simulated/shuttle/floor/black/muriki

/obj/effect/shuttle_landmark/premade/supply/centcom
	name = "ESCC Bunker"
	landmark_tag = "supply_centcom"
	base_area = /area/space
	base_turf = /turf/space

/obj/effect/shuttle_landmark/premade/supply/station
	name = "ES Outpost21"
	landmark_tag = "supply_station"
	docking_controller = "cargo_bay"

//////////////////////////////////////////////////////////////
// Tramshuttle
/datum/shuttle/autodock/multi/tram
	name = "Station Tram"
	warmup_time = 10
	shuttle_area = /area/shuttle/tram
	docking_controller_tag = "Tram"
	current_location = "tram_shed"
//	landmark_transition = "tram_transit"
	ceiling_type = /turf/simulated/shuttle/floor/white/muriki

	destination_tags = list(
		"tram_waste",
		"tram_eng",
		"tram_civ"
	)

/obj/effect/shuttle_landmark/premade/tram/shed
	name = "Tram Station - Shed"
	landmark_tag = "tram_shed"
	base_area = /area/muriki/tramstation/shed
	base_turf = /turf/simulated/open


/obj/effect/shuttle_landmark/premade/tram/base
	name = "Tram Station - Waste and Maintenance"
	landmark_tag = "tram_waste"
	base_turf = /turf/simulated/open

/obj/effect/shuttle_landmark/premade/tram/transit
	name = "Tram Station - Transit"
	landmark_tag = "tram_transit"
	base_turf = /turf/simulated/open

/obj/effect/shuttle_landmark/premade/tram/eng
	name = "Tram Station - Engineering Cargo"
	landmark_tag = "tram_eng"
	base_turf = /turf/simulated/open

/obj/effect/shuttle_landmark/premade/tram/civ
	name = "Tram Station - Civilian"
	landmark_tag = "tram_civ"
	base_turf = /turf/simulated/open


//////////////////////////////////////////////////////////////
// Trade Ship
/datum/shuttle/autodock/ferry/trade
	name = "Trade"
	location = FERRY_LOCATION_OFFSITE
	warmup_time = 10	//want some warmup time so people can cancel.
	shuttle_area = /area/shuttle/trade
	landmark_offsite = "trade_away"
	landmark_station = "trade_station"
	docking_controller_tag = "trade_shuttle"
	ceiling_type = /turf/simulated/shuttle/floor/black/muriki

/obj/effect/shuttle_landmark/premade/trade/away
	name = "Deep Space"
	landmark_tag = "trade_away"
	docking_controller = "trade_shuttle_bay"
	base_area = /area/space
	base_turf = /turf/space

/obj/effect/shuttle_landmark/premade/trade/station
	name = "ES Outpost21"
	landmark_tag = "trade_station"
	docking_controller = "trade_shuttle_dock_airlock"

//////////////////////////////////////////////////////////////
// Mercenary Shuttle
// Look into fitting this on the Main map- RadiantFlash
/datum/shuttle/autodock/multi/mercenary
	name = "Mercenary"
	warmup_time = 0
	shuttle_area = /area/shuttle/mercenary
	current_location = "mercenary_base"
	landmark_transition = "mercenary_transit"
	can_cloak = TRUE
	cloaked = TRUE
	docking_controller_tag = "merc_shuttle"
	announcer = "Automated Traffic Control"
	arrival_message = "Attention.  A vessel is approaching the colony."
	departure_message = "Attention.  A vessel is now leaving from the colony."
	ceiling_type = /turf/simulated/shuttle/floor/black/muriki

	destination_tags = list(
		"mercenary_base",
		"mercenary_station_se",
		"mercenary_station_sw",
		"mercenary_station_n",
		"mercenary_station_s"
	)

/obj/effect/shuttle_landmark/premade/mercenary/base
	name = "Home Base"
	landmark_tag = "mercenary_base"
	docking_controller = "merc_base"
	base_area = /area/space
	base_turf = /turf/space

/obj/effect/shuttle_landmark/premade/mercenary/transit
	name = "Deep Space"
	landmark_tag = "mercenary_transit"

/obj/effect/shuttle_landmark/premade/mercenary/station_se
	name = "ES Outpost 21 (SE)"
	landmark_tag = "mercenary_station_se"

/obj/effect/shuttle_landmark/premade/mercenary/station_sw
	name = "ES Outpost 21 (SW)"
	landmark_tag = "mercenary_station_sw"

/obj/effect/shuttle_landmark/premade/mercenary/station_n
	name = "ES Outpost 21 (N)"
	landmark_tag = "mercenary_station_n"

/obj/effect/shuttle_landmark/premade/mercenary/station_s
	name = "ES Outpost 21 (S)"
	landmark_tag = "mercenary_station_s"

//////////////////////////////////////////////////////////////
// Skipjack
/datum/shuttle/autodock/multi/skipjack
	name = "Skipjack"
	warmup_time = 0
	shuttle_area = /area/shuttle/skipjack
	current_location = "skipjack_base"
	landmark_transition = "skipjack_transit"
	can_cloak = TRUE
	cloaked = TRUE
	announcer = "Automated Traffic Control"
	arrival_message = "Attention.  Unidentified object approaching the colony."
	departure_message = "Attention.  Unidentified object exiting local space.  Unidentified object expected to escape Borealis gravity well with current velocity."
	ceiling_type = /turf/simulated/shuttle/floor/black/muriki

	destination_tags = list(
		"skipjack_base",
		"skipjack_station_ne",
		"skipjack_station_nw",
		"skipjack_station_se",
		"skipjack_station_sw"
	)

/obj/effect/shuttle_landmark/premade/skipjack/base
	name = "Home Base"
	landmark_tag = "skipjack_base"
	base_area = /area/space
	base_turf = /turf/space

/obj/effect/shuttle_landmark/premade/skipjack/transit
	name = "Deep Space"
	landmark_tag = "skipjack_transit"

/obj/effect/shuttle_landmark/premade/skipjack/station_ne
	name = "ES Outpost 21 (NE)"
	landmark_tag = "skipjack_station_ne"

/obj/effect/shuttle_landmark/premade/skipjack/station_nw
	name = "ES Outpost 21 (NW)"
	landmark_tag = "skipjack_station_nw"

/obj/effect/shuttle_landmark/premade/skipjack/station_se
	name = "ES Outpost 21 (SE)"
	landmark_tag = "skipjack_station_se"

/obj/effect/shuttle_landmark/premade/skipjack/station_sw
	name = "ES Outpost 21 (SW)"
	landmark_tag = "skipjack_station_sw"

//////////////////////////////////////////////////////////////
// ERT Shuttle
/datum/shuttle/autodock/ferry/specialops
	name = "Special Operations"
	location = FERRY_LOCATION_STATION
	warmup_time = 10
	shuttle_area = /area/shuttle/specops
	landmark_station = "specops_cc"
	landmark_offsite = "specops_station"
	docking_controller_tag = "specops_shuttle_port"
	ceiling_type = /turf/simulated/shuttle/floor/black/muriki

/obj/effect/shuttle_landmark/premade/specops/centcom
	name = "ESCC Bunker"
	landmark_tag = "specops_cc"
	docking_controller = "specops_centcom_dock"
	base_area = /area/space
	base_turf = /turf/space

/obj/effect/shuttle_landmark/premade/specops/station
	name = "ES Outpost 21"
	landmark_tag = "specops_station"
	docking_controller = "specops_dock_airlock"
	special_dock_targets = list("Special Operations" = "specops_shuttle_fore")

//////////////////////////////////////////////////////////////
// Medical shuttle
/datum/shuttle/autodock/overmap/medical
	name = "Medical Rescue"
	warmup_time = 0
	current_location = "outpost_medical_hangar"
	docking_controller_tag = "med_docker"
	shuttle_area = list(/area/shuttle/medical)
	fuel_consumption = 1 //much less, due to being teeny
	ceiling_type = /turf/simulated/shuttle/floor/white/muriki

/obj/effect/shuttle_landmark/premade/medical/muriki
	name = "ES Outpost 21 (Medical Dock)"
	landmark_tag = "outpost_medical_hangar"
	base_turf = /turf/simulated/floor
	base_area = /area/medical/hangar

//////////////////////////////////////////////////////////////
// Security shuttle
/datum/shuttle/autodock/overmap/security
	name = "Security Carrier"
	warmup_time = 0
	current_location = "outpost_security_hangar"
	docking_controller_tag = "sec_docker"
	shuttle_area = list(/area/shuttle/security)
	fuel_consumption = 1 //much less, due to being teeny
	ceiling_type = /turf/simulated/shuttle/floor/white/muriki

/obj/effect/shuttle_landmark/premade/security/muriki
	name = "ES Outpost 21 (Security Dock)"
	landmark_tag = "outpost_security_hangar"
	base_turf = /turf/simulated/floor
	base_area = /area/security/hangar

//////////////////////////////////////////////////////////////
// Trawler Shuttle
/datum/shuttle/autodock/overmap/trawler
	name = "Mining Trawler"
	warmup_time = 0
	current_location = "outpost_trawler_pad"
	docking_controller_tag = "trawler_docker"
	shuttle_area = list(/area/shuttle/trawler)
	ceiling_type = /turf/simulated/shuttle/floor/black/muriki
	fuel_consumption = 2 // chonky

/obj/effect/shuttle_landmark/premade/trawler/muriki
	name = "ES Outpost 21 (Trawler Pad)"
	landmark_tag = "outpost_trawler_pad"
	base_turf = /turf/simulated/floor/plating/external/muriki
	base_area = /area/muriki/station/trawler_dock

/obj/effect/shuttle_landmark/premade/trawler/beltmine
	name = "Reclaimation Yard (Trawler bay)"
	landmark_tag = "trawler_yard"
	base_turf = /turf/simulated/floor
	base_area = /area/offworld/asteroidyard/station/dockingbay

/obj/effect/shuttle_landmark/premade/generic/beltmine
	name = "Reclaimation Yard (Civilian Dock)"
	landmark_tag = "orbitalyard_civ"
	base_turf = /turf/space
	base_area = /area/offworld/asteroidyard

/obj/effect/shuttle_landmark/premade/generic/beltmine_north
	name = "Reclaimation Yard (North)"
	landmark_tag = "orbitalyard_north"
	base_turf = /turf/space
	base_area = /area/offworld/asteroidyard

/obj/effect/shuttle_landmark/premade/generic/beltmine_south
	name = "Reclaimation Yard (South)"
	landmark_tag = "orbitalyard_south"
	base_turf = /turf/space
	base_area = /area/offworld/asteroidyard

/obj/effect/shuttle_landmark/premade/generic/beltmine_east
	name = "Reclaimation Yard (East)"
	landmark_tag = "orbitalyard_east"
	base_turf = /turf/space
	base_area = /area/offworld/asteroidyard

/obj/effect/shuttle_landmark/premade/generic/beltmine_west
	name = "Reclaimation Yard (West)"
	landmark_tag = "orbitalyard_west"
	base_turf = /turf/space
	base_area = /area/offworld/asteroidyard



//////////////////////////////////////////////////////////////
// Generic landings
/obj/effect/shuttle_landmark/premade/generic/arrivals
	name = "ES Outpost 21 (Near Arrivals)"
	landmark_tag = "outpost_landing_pad"
	base_turf = /turf/simulated/floor/outdoors/newdirt_nograss/muriki
	base_area = /area/muriki/grounds/shutt

/obj/effect/shuttle_landmark/premade/generic/engineering
	name = "ES Outpost 21 (Near Engineering)"
	landmark_tag = "outpost_engineering_pad"
	base_turf = /turf/simulated/floor/outdoors/newdirt_nograss/muriki
	base_area = /area/mine/explored/muriki/surface
