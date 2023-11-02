var/datum/antagonist/chu/chus

// Inherits most of its vars from the base datum.
/datum/antagonist/chu
	id = MODE_CHU
	role_text = "Chu"               // special_role text.
	role_text_plural = "Chu"       // As above but plural.
	bantype = "chuinfestation"
	hard_cap = 2
	mob_path = /mob/living/simple_mob/animal/synx
	initial_spawn_target = 1
	welcome_text = "You have so many new friends to meet today... Stalk crew from the dark, and convert them into more chus. You'll always be safer with friends!"
	antag_sound = 'sound/goonstation/spooky/Meatzone_BreathingSlow.ogg'
	protected_jobs = list("Security Officer", "Warden", "Detective", "Internal Affairs Agent", "Head of Security", "Site Manager")
	role_type = BE_ALIEN
	antag_indicator = "chuinfestation"
	flags = ANTAG_OVERRIDE_MOB | ANTAG_RANDSPAWN | ANTAG_OVERRIDE_JOB | ANTAG_VOTABLE | ANTAG_IMPLANT_IMMUNE
	victory_text = "Chu win - more later"
	loss_text = "Chu lost - more later!"
	victory_feedback_tag = "win - chus overran the station"
	loss_feedback_tag = "loss - staff survived the infestation"
	can_speak_aooc = FALSE	// Silly IC fun if you somehow manage to convince someone to help you...... somehow....

/datum/antagonist/chu/New()
	..()
	chus = src

/datum/antagonist/chu/create_objectives(var/datum/mind/hunger)
	if(!..())
		return

	var/datum/objective/survive/survive_objective = new
	survive_objective.owner = hunger
	hunger.objectives += survive_objective

	// TODO chu infestation objectives


/datum/antagonist/chu/equip(var/mob/living/carbon/human/hunger_mob)
	if(!..())
		return 0
	// what would a chu even get?
