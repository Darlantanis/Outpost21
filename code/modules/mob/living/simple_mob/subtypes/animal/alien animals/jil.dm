/datum/category_item/catalogue/fauna/jil
	name = "Jil"
	desc = "TODO - jil description"
	value = CATALOGUER_REWARD_TRIVIAL

/datum/category_item/catalogue/fauna/jil/jillioth
	name = "Jillioth"
	desc = "TODO - giant jil description"
	value = CATALOGUER_REWARD_MEDIUM

/mob/living/simple_mob/vore/alienanimals/jil
	name = "jil"
	real_name = "jil"
	desc = "A fluffy thieving creature that wanders maintenance."
	tt_desc = "Crinitus Latrunculus"
	
	icon = 'icons/mob/animal_op.dmi'
	icon_state = "jil"
	icon_living = "jil"
	icon_dead = "jil_dead"
	var/icon_splat = "jil_splat"
	icon_rest = "jil_sleep"
	kitchen_tag = "rodent"

	faction = "jil"

	maxHealth = 15
	health = 15
	has_hands = TRUE
	humanoid_hands = TRUE
	minbodytemp = 175
	pass_flags = PASSTABLE

	universal_understand = 1

	melee_damage_lower = 1
	melee_damage_upper = 1
	base_attack_cooldown = 1 SECOND
	attacktext = list("nipped", "bit", "chomped")

	movement_cooldown = 1.5
	animate_movement = SLIDE_STEPS

	layer = MOB_LAYER
	density = FALSE

	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "stamps on"

	catalogue_data = list(/datum/category_item/catalogue/fauna/jil)

	has_langs = list("Jil")
	meat_type = /obj/item/weapon/reagent_containers/food/snacks/meat

	say_list_type = /datum/say_list/jil
	ai_holder_type = /datum/ai_holder/simple_mob/intentional/jil
	melee_attack_delay = 0	// For some reason, having a delay makes item pick-up not work.

/mob/living/simple_mob/vore/alienanimals/jil/jillilah
	name = "jillilah"
	real_name = "jillilah"
	desc = "When you stare deep in her beady little eyes, you can feel an intense desire to declare independence..."
	tt_desc = "Crinitus Latrunculus"

	faction = "cargonia"

	// tiny suit!
	icon_state = "jil_cargo"
	icon_living = "jil_cargo"
	icon_dead = "jil_cargo_dead"
	icon_splat = "jil_cargo_splat"
	icon_rest = "jil_cargo_sleep"

/mob/living/simple_mob/vore/alienanimals/jil/jillioth
	name = "jillioth"
	real_name = "jillioth"
	desc = "Here to collect."
	tt_desc = "Crinitus Robustus"

	maxHealth = 250
	health = 250
	density = TRUE

	catalogue_data = list(/datum/category_item/catalogue/fauna/jil/jillioth)

	melee_damage_lower = 20
	melee_damage_upper = 40

	// enlorgen
	icon_state = "jil_big"
	icon_living = "jil_big"
	icon_dead = "jil_big_dead"
	icon_splat = "jil_big_splat"
	icon_rest = "jil_big_sleep"

/mob/living/simple_mob/vore/alienanimals/jil/Initialize()
	. = ..()

	verbs += /mob/living/proc/ventcrawl
	verbs += /mob/living/proc/hide

	var/obj/structure/closet/C = locate( /obj/structure/closet, loc)
	if(C && !C.opened)
		// don't care about sizes, this will be funny when a jillioth is in a closet at map load
		src.forceMove(C)

/mob/living/simple_mob/vore/alienanimals/jil/Crossed(atom/movable/AM as mob|obj)
	if(AM.is_incorporeal())
		return
	if( ishuman(AM) )
		if(!stat)
			bonk(src,prob(15))
	..()

/mob/living/simple_mob/vore/alienanimals/jil/death()
	layer = MOB_LAYER
	playsound(src, 'sound/effects/mouse_squeak_loud.ogg', 35, 1)
	if(client)
		client.time_died_as_mouse = world.time
	..()

	if(istype(src,/mob/living/simple_mob/vore/alienanimals/jil/jillilah))
		// drop cap
		var/obj/item/clothing/head/soft/C = new /obj/item/clothing/head/soft // cargo hat!
		C.name = "Jillilah's cap"
		C.add_blood(src)
		C.desc = "A tiny cargo hat, clearly not sized for a person, soaked in the innocent blood of its owner."
		C.forceMove(src.loc) // drop on

/mob/living/simple_mob/vore/alienanimals/jil/proc/splat()
	death()
	src.icon_dead = icon_splat
	src.icon_state = icon_splat

/mob/living/simple_mob/vore/alienanimals/jil/proc/bonk(var/mob/M, var/sound_play)
	// bonk noise
	if(sound_play && sound_play)
		M.say("*merp")

/mob/living/simple_mob/vore/alienanimals/jil/proc/scream(var/mob/M, var/sound_play)
	// screaming noise
	if(sound_play)
		M.say("Squee!","Squeee!","Squeak!","Eeeee!")
		playsound(M, 'sound/effects/mouse_squeak_loud.ogg', 35, 1)

/mob/living/simple_mob/vore/alienanimals/jil/update_icons()
	..()
	if(stat == DEAD)
		// leave icon as is, set by death
	else if(lying || resting || sleeping > 0)
		icon_state = icon_rest
	else
		icon_state = icon_living

/mob/living/simple_mob/vore/alienanimals/jil/Life()
	..()
	if(stat != DEAD)
		if((!mind || !mind.active) && client == null)
			if(istype(loc,/obj/structure/closet))
				// sleep in locker
				if(sleeping < 3)
					Sleeping(3)
				// pop open!
				if(rand(1000) <= 2)
					var/obj/structure/closet/C = loc
					if(!C.opened && (C.can_open()))
						// WAKEUP! Try and escape!
						AdjustSleeping(sleeping-100) // force a wakeup... weird I can't just use Sleeping for this...
						resting = FALSE
						bonk(src,TRUE)
						C.open(src)

			// adjust sleep here, needs mind to sleep otherwise...
			// adding the check so this doesn't conflict with life/handle_regular_status_updates()
			if(sleeping > 0)
				// sleep process
				AdjustSleeping(-1)
				resting = (sleeping > 0)
		update_icons()

// Jil noises
/datum/say_list/jil
	speak = list()
	emote_hear = list("merps","mips","meeps")
	emote_see = list("runs in a circle", "shakes", "wiggles", "puffs up")

/datum/say_list/jil/jillioth
	speak = list()
	emote_hear = list("MERPS","MIPS","MEEPS")
	emote_see = list("jostles menacingly", "shakes threateningly", "wiggles ominously")

/*
	jil AI
*/

/datum/ai_holder/simple_mob/intentional/jil
	hostile = FALSE
	retaliate = TRUE // code doesn't allow targeting mobs, this is only so pickups still work, bluh at this hack
	vision_range = 10
	can_flee = TRUE
	flee_when_dying = TRUE
	use_astar = TRUE // oh no no no

	var/greed = 0	// The probability we will try to steal something. Increases over time if we are not holding something
	var/hoard_items = TRUE
	var/hoard_distance = 2	// How far an item can be from the Sakimm's home turf to be counted inside its 'hoard'.
	maximum_path_distance = 10 // jil lag distance help
	var/original_home_distance = null
	var/search_delay = 8 SECONDS	// How often can we look for item targets?
	var/last_search = 0

	intelligence_level = AI_DUMB // giveup easy
	var/home_turf_previous = null // if old hometurf exists and we're in range of it, reset home to it!
	var/home_turf_original = null //
	var/fear_run = 0

	base_wander_delay = 1
	max_home_distance = 850
	var/unreachable_locs = list()   //cleared when reaching nest/dropoff item, prevents window breaking spam
	var/forbidden_objs = list(/obj/item/weapon/deck,/obj/item/weapon/paper_bin,/obj/item/stack) // things that don't play well with jils
	var/last_pickup_turf = null // when a jil return an item to the nest, this turf is removed from the forbid, so lockers work better

/datum/ai_holder/simple_mob/intentional/jil/New()
	..()
	// pathing setup
	maximum_path_distance = world.view*1.5

	// search setup
	greed = rand(0,50)
	original_home_distance = max_home_distance
	search_delay = rand(5,9) SECONDS	// How often can we look for item targets?
	last_search = world.time + rand( 0, search_delay) // randomize

	// set first home
	home_turf_original = home_turf


/datum/ai_holder/simple_mob/intentional/jil/proc/set_new_home(atom/A)
	if(holder.loc && istype(A,/turf))
		// if first home away from home... then our origin_home can be set!
		home_turf_previous = home_turf
		home_turf = A // new nest!
		last_pickup_turf = null // clear


/datum/ai_holder/simple_mob/intentional/jil/pre_melee_attack(atom/A)
	if(istype(A, /obj/item))
		var/obj/item/I = A
		if(istype(I, /obj/item/weapon/reagent_containers/food/snacks))	// If we can't pick it up, or it's edible, go to harm.
			holder.a_intent = I_HURT
		else
			holder.a_intent = I_HELP
	else
		// bonk for all others
		holder.a_intent = I_HELP

	// update forbiddens
	update_forbidden_list()

	// jil vs jillioth bonk behavior
	if(!istype( holder, /mob/living/simple_mob/vore/alienanimals/jil/jillioth) || prob(5))
		// this is stupid, always set to 5 so it fails at first window bump, except the jillioth does random hits against it
		failed_breakthroughs = 4

		// if not a closet...
		if(!istype(A, /obj/structure/closet))
			// forbid turf, we picked it up or couldn't reach it
			if(target && istype(target.loc, /turf))
				unreachable_locs += target.loc // if not inside something!

		// check if we should make a new nest due to being trapped on our way back!
		if(prob(30) && holder.get_active_hand())
			set_new_home(holder.loc)

		// end path to target
		if(target && istype(target.loc, /turf))
			last_pickup_turf = target.loc // for closet fix
		give_up_movement()
		lose_target()
	else
		// if a closet that a jillioth has seen...
		if(istype(A, /obj/structure/closet))
			// stop slamming
			failed_breakthroughs = 4

			// cancel it once destroyed
			give_up_movement()
			lose_target()
		else
			// keep trying!
			failed_breakthroughs = 0


/datum/ai_holder/simple_mob/intentional/jil/post_melee_attack(atom/A)
	if(istype(A, /obj/item) && !holder.get_active_hand() && holder.Adjacent(A))
		// attempt grab of target!
		var/obj/item/I = A
		I.attack_hand(holder)
	else if(istype(A, /obj/structure/closet))
		// attempt to open!
		var/obj/structure/closet/C = A
		if(!C.opened && (C.can_open() || istype(holder,/mob/living/simple_mob/vore/alienanimals/jil/jillioth)))
			C.attack_hand(holder)
	/*
	else if(istype(A,/obj/machinery/atmospherics/unary/vent_pump) || istype(A,/obj/machinery/atmospherics/unary/vent_scrubber))
		// vent crawl
		holder.ventcrawl()
	*/

	// jil merp
	var/mob/living/simple_mob/vore/alienanimals/jil/J = holder
	if(holder.get_active_hand())
		J.bonk(J,TRUE)
	else
		J.bonk(J,prob(5))


/datum/ai_holder/simple_mob/intentional/jil/list_targets()
	. = hearers(vision_range, holder) - holder
	if(!hoard_items)
		return

	var/static/hostile_machines = typecacheof(list(/obj/machinery/porta_turret, /obj/mecha))
	for(var/HM in typecache_filter_list(range(vision_range, holder), hostile_machines))
		if(can_see(holder, HM, vision_range))
			. += HM

	if(holder.get_active_hand())	// We don't want item targets if we have an item!
		return .

	if(world.time <= last_search + search_delay)	// Don't spam searching for item targets, since they can be in areas with a -lot- of items.
		return .
	last_search = world.time

	for(var/atom/A in view(holder, vision_range))
		if(!istype(A, /obj/item/weapon/reagent_containers/food/snacks) && get_dist(A, home_turf) < hoard_distance)
			// disable for things already in hoard, food needs to be eaten though
			continue

		// collect items!
		if(istype(A,/obj/item))
			var/obj/item/I = A
			if(!I.anchored && I.w_class <= ITEMSIZE_NORMAL) // jils are large enough to...
				. += I
		// bonus interactions!
		else if(istype(A,/obj/structure/closet)) // opening closets
			var/obj/structure/closet/C = A
			if(!C.opened && (C.can_open() || istype(holder,/mob/living/simple_mob/vore/alienanimals/jil/jillioth)))
				. += C
		/*
		else if(istype(A,/obj/machinery/atmospherics/unary/vent_pump)) // entering vents
			var/obj/machinery/atmospherics/unary/vent_pump/P = A
			if(prob(5)) // only sometimes
				. += P
		else if(istype(A,/obj/machinery/atmospherics/unary/vent_scrubber)) // entering vents
			var/obj/machinery/atmospherics/unary/vent_scrubber/S = A
			if(prob(5)) // only sometimes
				. += S
		*/
	. -= holder.contents

/datum/ai_holder/simple_mob/intentional/jil/find_target(var/list/possible_targets, var/has_targets_list = FALSE)
	if(!hoard_items)
		return

	if(holder.is_ventcrawling)
		return

	. = list()
	if(!has_targets_list)
		possible_targets = list_targets()

	for(var/possible_target in possible_targets)
		var/atom/A = possible_target
		var/forbid = FALSE

		for(var/forbid_loc in unreachable_locs) // forbidden turf list
			if(A.loc == forbid_loc)
				forbid = TRUE
				break

		for(var/forbid_obj in forbidden_objs) // forbidden object list
			if(istype(A,forbid_obj))
				forbid = TRUE
				break

		if(can_attack(A) && !forbid && !istype(A, /mob/living))
			// for item pickup targeting
			. += A

	for(var/obj/item/I in .)
		last_search = world.time
		if(!hoard_items || get_dist(I, home_turf) < hoard_distance)
			. -= I

	var/new_target = pick_target(.)
	give_target(new_target)
	return new_target


/datum/ai_holder/simple_mob/intentional/jil/should_go_home()
	if(!hoard_items)
		return TRUE

	if(holder.is_ventcrawling)
		return FALSE

	if(holder.health < 5) // HP FEAR, also makes jillioths robust when on lost hp lol
		return TRUE

	if((!returns_home && !holder.get_active_hand()) || !home_turf)	// If we have an item, we want to go home.
		return FALSE

	if(get_dist(holder, home_turf) > max_home_distance)
		if(!home_low_priority)
			return TRUE
		else if(!leader && !target)
			return TRUE
	return FALSE

/datum/ai_holder/simple_mob/intentional/jil/proc/update_forbidden_list()
	for(var/turf/forbid_loc in unreachable_locs) // forbidden turf list
		if(get_dist(holder.loc, forbid_loc) < 2)
			unreachable_locs -= forbid_loc // remove from list, enough to step to
		else if(get_dist(holder.loc, forbid_loc) > 30)
			unreachable_locs -= forbid_loc // remove from list, far enough to forget
		else if(istype( holder, /mob/living/simple_mob/vore/alienanimals/jil/jillioth) && prob(50))
			unreachable_locs -= forbid_loc // random retry, jillioth
		else if(prob(2))
			unreachable_locs -= forbid_loc // random retry

/datum/ai_holder/simple_mob/intentional/jil/handle_special_strategical()
	if(holder.stat == DEAD)
		return

	// nothing special if not a hoarder
	if(!hoard_items)
		return

	// vent crawler handling
	if(holder.is_ventcrawling)
		return

	if(fear_run > 0)
		fear_run -= 1
		max_home_distance = original_home_distance

		// clean target
		if(target)
			lose_target()

		holder.IMove(get_step(holder, pick(alldirs)))
		var/mob/living/simple_mob/vore/alienanimals/jil/J = holder
		J.scream(J,prob(30))
	else
		// rejuvinate nest!
		if(home_turf_previous)
			// reset to last home
			if(get_dist(holder.loc, home_turf_previous) < 2)
				home_turf = home_turf_previous
				home_turf_previous = null
		if(home_turf_original)
			// reset to origin home, all other homes give up
			if(home_turf_original && get_dist(holder.loc, home_turf_original) < 2)
				home_turf = home_turf_original
				home_turf_previous = null

		// too far from old nest? Find an item and make it the new nest
		if(holder.get_active_hand() && holder.loc && home_turf && istype(holder.loc,/turf) && (get_dist(holder.loc, home_turf) > 20 || holder.loc.z != home_turf.z))
			home_turf_previous = home_turf
			home_turf = holder.loc // new nest!

		// disable Astar most of the time, gives jils a dopey side for efficiency, but sometimes they just GOFORIT
		use_astar = FALSE
		if(target && istype(target,/mob))
			// need this to be super cheap...
			use_astar = FALSE
		else if(holder.get_active_hand())
			// long paths
			use_astar = TRUE
			maximum_path_distance = world.view*2
		else
			// short path to goal!
			if(prob(50))
				use_astar = TRUE
			maximum_path_distance = world.view

		// clear old forbid turf
		if(prob(10))
			update_forbidden_list()

		// not holding something, get greedier, find way to target
		if(!holder.get_active_hand() && holder.health >= 5 && holder.sleeping <= 0)
			// oops, target is held by something else...
			if(target && !istype(target.loc,/turf))
				// lose target...
				if(target && istype(target.loc, /turf))
					unreachable_locs += target.loc // if not inside something!
				give_up_movement()
				lose_target()
				last_pickup_turf = null
				greed = 100 // REALLY WANT A NEW TARGET

			// scream at hostile
			if(target && istype(target,/mob) && retaliate)
				var/mob/living/simple_mob/vore/alienanimals/jil/J = holder
				J.scream(J,prob(30))

			// wander from nest
			max_home_distance = original_home_distance

			// find targets
			if(prob(10))
				greed++
			greed = min(95, greed)
			if(!target && prob(5 + greed))
				last_pickup_turf = null // new target, new cleanup turf
				find_target()
		else
			// clean target
			if(target)
				lose_target()

			// return home
			max_home_distance = hoard_distance-1
			if(get_dist(holder, home_turf) <= max_home_distance || holder.sleeping > 0)
				// drop item off at nest
				if(holder.get_active_hand())
					last_search = world.time
					greed = 0
					holder.drop_from_inventory(holder.get_active_hand(), get_turf(holder))
					if(last_pickup_turf)
						unreachable_locs -= last_pickup_turf // remove from list, far enough to forget
						last_pickup_turf = null // clear last pickup, we freaked out

				if(holder.sleeping > 0 || holder.health < 5 || prob(15))
					var/mob/living/simple_mob/vore/alienanimals/jil/J = holder
					if(J.sleeping <= 0)
						J.Sleeping( 30 + rand(50))
						J.health += round(J.maxHealth / rand(5,15)) // heal!
						if(J.health > J.maxHealth)
							J.health = J.maxHealth
					holder.update_icons()


/datum/ai_holder/simple_mob/intentional/jil/special_flee_check()
	return holder.get_active_hand() || fear_run > 0

/datum/ai_holder/simple_mob/intentional/jil/react_to_attack(atom/movable/attacker, ignore_timers = FALSE)
	if(holder.is_ventcrawling)
		return FALSE
	// not allowed to retaliate!
	if(holder.stat) // We're dead.
		ai_log("react_to_attack() : Was attacked by [attacker], but we are dead/unconscious.", AI_LOG_TRACE)
		return FALSE
	if(holder.resting)	// I can't kill someone while I'm laying down!
		ai_log("react_to_attack() : AI is resting. Getting up.", AI_LOG_TRACE)
		holder.lay_down()
	if(stance == STANCE_SLEEP) // If we're asleep, try waking up if someone's wailing on us.
		ai_log("react_to_attack() : AI is asleep. Waking up.", AI_LOG_TRACE)
		var/mob/living/simple_mob/vore/alienanimals/jil/J = holder
		J.Sleeping(0)
		J.resting = FALSE
		J.update_icons()
		go_wake()

	// drop item
	if(holder.get_active_hand())
		last_search = world.time
		greed = 0
		holder.drop_from_inventory(holder.get_active_hand(), get_turf(holder))

	if(istype(holder,/mob/living/simple_mob/vore/alienanimals/jil/jillioth))
		if(!hostile && !retaliate) // Not allowed to defend ourselves.
			ai_log("react_to_attack() : Was attacked by [attacker], but we are not allowed to attack back.", AI_LOG_TRACE)
			return FALSE
		if(holder.IIsAlly(attacker)) // I'll overlook it THIS time...
			ai_log("react_to_attack() : Was attacked by [attacker], but they were an ally.", AI_LOG_TRACE)
			return FALSE
		if(target && !ignore_timers && (world.time < last_target_time + 8 SECONDS)) // Already fighting someone. Switching every time we get hit would impact our combat performance.
			ai_log("react_to_attack() : Was attacked by [attacker], but we switched targets too recently to change.", AI_LOG_TRACE)
			on_attacked(attacker)
			return FALSE
		// fear the jillioth
		on_attacked(attacker) // So we attack immediately and not threaten.
		return give_target(attacker, urgent = TRUE) // Also handles setting the appropiate stance.
	else
		ai_log("react_to_attack() : Was attacked by [attacker], but we are not allowed to attack back.", AI_LOG_TRACE)
		var/mob/living/simple_mob/vore/alienanimals/jil/J = holder
		J.scream(J,TRUE)
		fear_run = 10 + rand(30)
		if(target)
			// lose target...
			if(target && istype(target.loc, /turf))
				unreachable_locs += target.loc // if not inside something!
			if(holder.get_active_hand())
				holder.drop_from_inventory(holder.get_active_hand(), get_turf(holder))
			last_pickup_turf = null // clear last pickup, we freaked out
			give_up_movement()
			lose_target()
		holder.IMove(get_step(holder, pick(alldirs)))
		return FALSE