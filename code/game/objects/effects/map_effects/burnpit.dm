/obj/effect/map_effect/interval/burnpit
	name = "burnpit"
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x2"
	opacity = 0

	always_run = TRUE
	interval_lower_bound = 5 SECONDS
	interval_upper_bound = 14 SECONDS

	light_color = "#eccb0d"

/obj/effect/map_effect/interval/burnpit/Crossed(atom/movable/AM as mob|obj)
	// break and delete things that are destroyed in the pit!
	var/update_falling = FALSE

	var/obj/machinery/portable_atmospherics/canister/tank = AM
	if(istype(tank,/obj/machinery/portable_atmospherics/canister) && !tank.destroyed) // rupture tanks
		tank.take_damage(10000) // BANG
		update_falling = TRUE

	if(update_falling)
		update_space_above()

/obj/effect/map_effect/interval/burnpit/proc/update_space_above()
	// fall safety... this is dumb, forces things that need to fall to do so. Because we may have been held up by something before.
	var/turf/simulated/open/OT = locate( /turf/simulated/open, get_zstep(src, UP))
	if(OT)
		OT.update()

/obj/effect/map_effect/interval/burnpit/trigger()
	var/turf/simulated/T = loc
	if(T)
		// dumb illusion of fire
		set_light(rand(2,8))

		// never put this out, reset my own air tile to FORCE combustion, should be enough to boost the other tiles too
		var/datum/gas_mixture/air_contents = T.return_air()
		if(!air_contents)
			T.make_air()
			air_contents = T.return_air()
		if(!air_contents.check_combustability())
			if(prob(5))
				T.make_air()
				air_contents = T.return_air()

		// force fuel on tile to continue burning forever
		var/obj/effect/decal/cleanable/liquid_fuel/fuel = locate(/obj/effect/decal/cleanable/liquid_fuel) in T
		if(!fuel) 
			if(T.return_air().temperature < PHORON_MINIMUM_BURN_TEMPERATURE )
				new /obj/effect/decal/cleanable/liquid_fuel( T, rand(6,12), TRUE)
			else
				if(prob(5) && T.return_air().temperature < PHORON_MINIMUM_BURN_TEMPERATURE*1.2) // if we go above, we're on a player burn!
					// try to stagnate, only player added fuel should boost it beyond this point
					T.make_air()
					air_contents = T.return_air()
					new /obj/effect/decal/cleanable/liquid_fuel( T, 1, TRUE)
				
		// praise zorg
		T.hotspot_expose( PHORON_MINIMUM_BURN_TEMPERATURE, 500)
		T.create_fire( air_contents.calculate_firelevel() ) // lingering fires

		// random updates to the space above
		update_space_above()