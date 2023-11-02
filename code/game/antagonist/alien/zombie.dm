var/datum/antagonist/zombie/zombies

// Inherits most of its vars from the base datum.
/datum/antagonist/zombie
	id = MODE_ZOMBIE
	role_text = "Zombie"               // special_role text.
	role_text_plural = "Zombie"       // As above but plural.
	bantype = "zombies"
	hard_cap = 8
	mob_path = /mob/living/simple_mob/animal/synx
	initial_spawn_target = 2
	welcome_text = "You have so many new friends to meet today... Stalk crew from the dark, and convert them into more chus. You'll always be safer with friends!"
	antag_sound = 'sound/goonstation/spooky/Meatzone_BreathingSlow.ogg'
	protected_jobs = list("Security Officer", "Warden", "Detective", "Internal Affairs Agent", "Head of Security", "Site Manager")
	role_type = BE_ZOMBIE
	antag_indicator = "zombies"
	flags = ANTAG_OVERRIDE_MOB | ANTAG_RANDSPAWN | ANTAG_OVERRIDE_JOB | ANTAG_VOTABLE | ANTAG_IMPLANT_IMMUNE | ANTAG_CHOOSE_NAME
	victory_text = "Zombies win - more later"
	loss_text = "Zombies lost - more later!"
	victory_feedback_tag = "win - zombies overran the station"
	loss_feedback_tag = "loss - staff survived the infestation"
	can_speak_aooc = TRUE	// Hoardsenses tingling

/datum/antagonist/zombie/New()
	..()
	zombies = src

/datum/antagonist/zombie/create_objectives(var/datum/mind/hunger)
	if(!..())
		return

	var/datum/objective/survive/survive_objective = new
	survive_objective.owner = hunger
	hunger.objectives += survive_objective

	// TODO zombie infestation objectives


/datum/antagonist/zombie/equip(var/mob/living/carbon/human/hunger_mob)
	if(!..())
		return 0
	// what would a zombie even get?
