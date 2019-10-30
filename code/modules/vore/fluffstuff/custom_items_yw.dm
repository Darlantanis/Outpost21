// **************
// Unleashed_Mana
// **************
/obj/item/weapon/fluff/zekewatch
	name = "Zeke's pocketwatch"
	desc = "Looks like it's broken... or is it?"
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "zekewatch"

/obj/item/weapon/fluff/zekewatch/attack_self(mob/living/user)
	if(user.r_hand == src || user.l_hand == src)
		var/time1 = rand(0,11)
		var/time2 = rand(0,59)

		if(time1 < 10)
			time1 = "0[time1]"
		if(time2 < 10)
			time2 = "0[time2]"

		user.visible_message("<span class='rose'>[src] displays [time1]:[time2]</span>")
	else
		return ..()
	return

/obj/item/weapon/kitchenknife/tacknife/unathiknife/fluff/eravik_vessi_1
	name = "Noctis"
	desc = "A strange blade made of some kind of black metal. It feels... incomplete."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "eravikblade"

/obj/item/weapon/reagent_containers/food/drinks/flask/fluff/david_3
	name = "David's lucky bottle"
	desc = "As long as there is something in it, nothing can go wrong."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "davidbottle"

/obj/item/weapon/material/kitchen/utensil/fork/fluff/ragna_1
	name = "Ragna's fork"
	desc = "\"FEAR RAGNA!\""
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "ragnafork"
	icon_override = 'icons/vore/custom_items_yw.dmi'
	item_state_slots = list(slot_r_hand_str = "ragnafork_r", slot_l_hand_str = "ragnafork_l")

// *********
// Capt_matt
// *********
//Payton Joghs
/obj/item/weapon/material/hatchet/unathiknife/fluff/payton_joghs_1
	name = "Payton's Knife"
	desc = "It appears to be a traditional unathi knife, though with 'Payton' written on the side and appearing to be made of steel."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "paytonknife"

// **************
// BlackAngelsAce
// **************
/obj/item/weapon/oldtwohanded/spear/fluff/madoka_koto_1
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_override = 'icons/vore/custom_items_yw.dmi'
	icon_state = "madokaspear0"
	base_icon = "madokaspear"

	item_state_slots = list(slot_back_str = "madokaspear0_mob")

	name = "Madoka's spear"
	desc = "A 10 foot long spear, with a sturdy wooden shaft to which is attached a strange, double spiked steel blade. One is slightly larger than the other."
	force = 14
	w_class = 5.0
	slot_flags = SLOT_BACK
	force_wielded = 22 // Was 13, Buffed - RR
	throwforce = 20
	throw_speed = 3
	edge = 0
	sharp = 1
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("stabbed", "pierced", "jabbed", "torn", "gored")

/obj/item/toy/bosunwhistle/fluff/strix
	name = "Authentic Bosun's Whistle"
	desc = "A authentic boatswain's call that appears to be silver plated! The noise it makes is ungodly loud and high pitched.. Why would a person with four extra-sensitive ears ever own such a thing!?"
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "strixwhistle"
	w_class = ITEMSIZE_TINY
	slot_flags = SLOT_EARS | SLOT_HOLSTER

/obj/item/toy/bosunwhistle/fluff/strix/attack_self(mob/user as mob)
	if(cooldown < world.time - 15)
		user << "<span class='notice'>You blow on [src], creating an ear-splitting noise!</span>"
		playsound(user, 'sound/misc/boatswain.ogg', 25, 1)
		cooldown = world.time

/obj/item/device/radio/headset/fluff/strix
	name = "Strix\'s headset"
	desc = "A headset that seems custom made for a avali skull shape, the sounds coming from it are very quiet."
	icon_state = "strix_headset"
	icon = 'icons/vore/custom_items_yw.dmi'
	item_state = "strix_headset"
	sprite_sheets = list(SPECIES_TESHARI = 'icons/vore/custom_onmob_yw.dmi')


// *************
// GeneralPantsu
// *************

//Amara Faell

/obj/item/weapon/flame/lighter/zippo/fluff/amara
	desc = "A zippo that comes in a metallic blood red case. How the flame can be lime green is an enigma in itself."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "bloodredzippo"

/obj/item/device/modkit_conversion/fluff/amara_hos_kit
	name = "Amara's modkit"
	desc = "A kit containing all the needed tools and parts to modify a Head of security armored coat. It has a red wolf painted on it."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/storage/vest/hoscoat
	to_suit = /obj/item/clothing/suit/storage/vest/hoscoat/amara_hos

//Nika Domashev

/obj/item/device/modkit_conversion/fluff/nika_sec_kit
	name = "Nika's modkit"
	desc = "A kit containing all the needed tools and parts to modify a Officer Armor Vest."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/storage/vest/officer
	to_suit = /obj/item/clothing/suit/storage/vest/officer/fluff/nika

// *******
// Gozulio
// *******

//Glitterpaws
/obj/item/weapon/melee/goz_whitecane
	name = "White Cane"
	desc = "A telescoping white cane. They are commonly used by the blind or visually impaired as a mobility tool or as a courtesy to others."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "goz_whitecane_0"
	item_icons = list(
		slot_l_hand_str = 'icons/vore/custom_items_left_hand_yw.dmi',
		slot_r_hand_str = 'icons/vore/custom_items_right_hand_yw.dmi',
	)
	slot_flags = SLOT_BELT
	w_class = ITEMSIZE_SMALL
	force = 3
	var/on = 0

/obj/item/weapon/melee/goz_whitecane/attack_self(mob/user as mob)
	on = !on
	if(on)
		user.visible_message("<span class='notice'>\The [user] extends the white cane.</span>",\
		"<span class='warning'>You extend the white cane.</span>",\
		"You hear an ominous click.")
		icon_state = "goz_whitecane_1"
		item_state_slots = list(slot_r_hand_str = "goz_whitecane", slot_l_hand_str = "goz_whitecane")
		w_class = ITEMSIZE_NORMAL
		force = 5
		attack_verb = list("smacked", "struck", "craked", "beaten")
	else
		user.visible_message("<span class='notice'>\The [user] collapses the white cane.</span>",\
		"<span class='notice'>You collapse the white cane.</span>",\
		"You hear a click.")
		icon_state = "goz_whitecane_0"
		item_state_slots = list(slot_r_hand_str = null, slot_l_hand_str = null)
		w_class = ITEMSIZE_SMALL
		force = 3
		attack_verb = list("hit", "poked")

	if(istype(user,/mob/living/carbon/human))
		var/mob/living/carbon/human/H = user
		H.update_inv_l_hand()
		H.update_inv_r_hand()

	playsound(src.loc, 'sound/weapons/empty.ogg', 50, 1)
	add_fingerprint(user)

	return

/obj/item/weapon/melee/goz_whitecane/attack(mob/M as mob, mob/user as mob)
	if(user.a_intent == I_HELP)
		user.visible_message("<span class='notice'>\The [user] has lightly tapped [M] on the ankle with their white cane!</span>")
		return
	else
		..()

// *******
// Dawidoe
// *******
/obj/item/weapon/flame/lighter/zippo/fluff/melissa
	name = "Zippo"
	desc = "A custom made zippo lighter with word 'Mel' engraved in white font on the bottom right corner. It's black, with red lines around the edges."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "melzippo"

/obj/item/device/modkit_conversion/fluff/melissa_gun_kit
	name = "Melissa's modkit"
	desc = "A kit containing all the needed tools and parts to modify a 45 Pistol."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/weapon/gun/projectile/sec/flash
	to_suit = /obj/item/weapon/gun/projectile/fluff/m1911

// ************
// championfire
// ************

//Anoki Windroar

/obj/item/weapon/implanter/reagent_generator/roiz/anoki
	implant_type = /obj/item/weapon/implant/reagent_generator/roiz/anoki

/obj/item/weapon/implant/reagent_generator/roiz/anoki
	name = "egg laying implant"
	desc = "This is an implant that allows the user to lay eggs."
	usable_volume = 500
	transfer_amount = 50

	empty_message = list("Your lower belly feels smooth and empty. Sorry, we're out of eggs!", "The reduced pressure in your lower belly tells you there are no more eggs.")
	full_message = list("Your lower belly looks swollen with irregular bumps, and it feels heavy.", "Your lower abdomen feels really heavy, making it a bit hard to walk.")
	emote_descriptor = list("an egg right out of Anoki's lower belly!", "into Anoki' belly firmly, forcing him to lay an egg!", "Anoki really tight, who promptly lays an egg!")

// ********
// Vitorhks
// ********

//Jessica Mayer

/obj/item/device/modkit_conversion/fluff/jessica_sec_kit
	name = "Jessica's modkit"
	desc = "A kit containing all the needed tools and parts to modify a Officer Armor Vest."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/storage/vest/officer
	to_suit = /obj/item/clothing/suit/storage/vest/officer/fluff/jessica

// *******
// ConZon4
// *******

//Dillan McGraw

//	/obj/item/weapon/storage/fluff/cane/dillan
//	var/max_w_class = 1
//	var/max_storage_space = 4
//	throwforce = 7
//	force = 5
//	name = "Polished Cane"
//	desc = "A wooden cane, polished to a fine gleam. It appears weathered and worn down from extended use. On the handle, the name 'Dillan' can be read."
//	icon = 'icons/vore/custom_items_yw.dmi'
//	icon_state = "fancycane"
//	item_icons = list(
//		slot_l_hand_str = 'icons/vore/custom_items_left_hand_yw.dmi',
//		slot_r_hand_str = 'icons/vore/custom_items_right_hand_yw.dmi',
//		)
//
// ********
// lukevale
// ********

// This implant gives me cancer -Izac

//Mira Rezus

/obj/item/weapon/implant/reagent_generator/tempest/mira
	name = "lactation implant"
	desc = "This is an implant that allows the user to lactate."
	usable_volume = 1000

	empty_message = list("Your breasts feel unusually empty.", "Your chest feels lighter - your milk supply is empty!", "Your milk reserves have run dry.", "Your grateful nipples ache as the last of your milk leaves them.")
	full_message = list("Your breasts ache badly - they are swollen and feel fit to burst!", "You need to be milked! Your breasts feel bloated, eager for release.", "Your milky breasts are starting to leak...")
	emote_descriptor = list("squeezes Mira's nipples, milking them", "milks Mira's breasts", "extracts milk")
	self_emote_descriptor = list("squeeze out", "extract")
	random_emote = list("supresses a moan", "gasps sharply", "bites her lower lip")
	verb_name = "Milk"
	verb_desc = "Grab Mira's breasts and milk her, storing her fresh, warm milk in a container. This will undoubtedly turn her on."

/obj/item/weapon/implanter/reagent_generator/mira
	implant_type = /obj/item/weapon/implant/reagent_generator/tempest/mira

//Natalya Vospit

/obj/item/weapon/implant/reagent_generator/tempest/natalya
	name = "lactation implant"
	desc = "This is an implant that allows the user to lactate."
	usable_volume = 1000

	empty_message = list("Your breasts feel unusually empty.", "Your chest feels lighter - your milk supply is empty!", "Your milk reserves have run dry.", "Your grateful nipples ache as the last of your milk leaves them.")
	full_message = list("Your breasts ache badly - they are swollen and feel fit to burst!", "You need to be milked! Your breasts feel bloated, eager for release.", "Your milky breasts are starting to leak...")
	emote_descriptor = list("squeezes Natalya's nipples, milking them", "milks Natalya's breasts", "extracts milk")
	self_emote_descriptor = list("squeeze out", "extract")
	random_emote = list("supresses a moan", "gasps sharply", "bites her lower lip")
	verb_name = "Milk"
	verb_desc = "Grab Natalya's breasts and milk her, storing her fresh, warm milk in a container. This will undoubtedly turn her on."

/obj/item/weapon/implanter/reagent_generator/natalya
	implant_type = /obj/item/weapon/implant/reagent_generator/tempest/natalya

//Eryn Wolfe

/obj/item/weapon/fluff/chemset
	name = "Eryn's chemistry set"
	desc = "A small box with a open compartment, some buttons, a disk drive, and flashing lights. On the back is a small metal plaque with the name 'Eryn Wofle' on it."
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "chemset"

//Mitsuko Jiao

/obj/item/device/modkit_conversion/fluff/jiao_anynlizer_kit/a
	name = "Mitsuko's modkit Mk1"
	desc = "A kit containing all the needed tools and parts to modify a heath analyzer. It has a Emblem painted on it."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/device/healthanalyzer
	to_suit = /obj/item/device/healthanalyzer/fluff/jiao_health

/obj/item/device/modkit_conversion/fluff/jiao_anynlizer_kit/b
	name = "Mitsuko's modkit Mk2"
	desc = "A kit containing all the needed tools and parts to modify a heath analyzer. It has a Emblem painted on it."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/device/healthanalyzer/improved
	to_suit = /obj/item/device/healthanalyzer/improved/fluff/jiao_health

/obj/item/device/modkit_conversion/fluff/jiao_anynlizer_kit/c
	name = "Mitsuko's modkit Mk3"
	desc = "A kit containing all the needed tools and parts to modify a heath analyzer. It has a Emblem painted on it."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/device/healthanalyzer/advanced
	to_suit = /obj/item/device/healthanalyzer/advanced/fluff/jiao_health

/obj/item/device/healthanalyzer/fluff/jiao_health
	name = "Kanghu medical scanner MK1"
	desc = "A Modified medical scanner, all the main components are compacted into the handle. This one is a basic unit."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "scanner_mk1"

/obj/item/device/healthanalyzer/improved/fluff/jiao_health
	name = "Kanghu medical scanner MK2"
	desc = "A Modified medical scanner, all the main components are compacted into the handle. This one is a improved unit."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "scanner_mk2"

/obj/item/device/healthanalyzer/advanced/fluff/jiao_health
	name = "Kanghu medical scanner MK3"
	desc = "A Modified medical scanner, all the main components are compacted into the handle. This one is a advanced unit."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "scanner_mk3"

// **************
// VanesaFancyFin
// **************

//Ire

/obj/item/weapon/bikehorn/fluff/chew_ire
	name = "Chew toy"
	desc = "A toy normally used by dogs to play with or chew on"
	slot_flags = SLOT_MASK
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "chew"
	item_state = "chew"
	item_icons = list(
		slot_l_hand_str = 'icons/vore/custom_items_left_hand_yw.dmi',
		slot_r_hand_str = 'icons/vore/custom_items_right_hand_yw.dmi',
		)

// **************
// Belsima
// **************

//I'm going to fix this code later.

/obj/item/weapon/implant/reagent_generator/belle/ysaline
	name = "lactation implant"
	desc = "This is an implant that allows the user to lactate."
	usable_volume = 1000

	empty_message = list("Your breasts feel unusually empty.", "Your chest feels lighter - your milk supply is empty!", "Your milk reserves have run dry.", "Your grateful nipples ache as the last of your milk leaves them.")
	full_message = list("Your breasts ache badly - they are swollen and feel fit to burst!", "You need to be milked! Your breasts feel bloated, eager for release.", "Your milky breasts are starting to leak...")
	emote_descriptor = list("squeezes Ysaline's nipples, milking them", "milks Ysaline's breasts", "tugs at Ysaline's breasts")
	self_emote_descriptor = list("squeeze out", "extract")
	random_emote = list("supresses a moan", "gasps sharply", "bites her lower lip")
	verb_name = "Milk"
	verb_desc = "Grab Ysaline's breasts and milk her, storing her fresh, warm milk in a container. This will undoubtedly turn her on."

// **************
// Trash
// **************
/obj/item/weapon/fluff/fidgetspinner
	name = "Fidget spinner"
	desc = "A spinning stress relief toy, upsetting family, friends, and employers for 500 years."
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "fidgetspinner"
	var/basestate = "fidgetspinner"

/obj/item/weapon/fluff/fidgetspinner/red
	name = "Red fidget spinner"
	desc = "A spinning stress relief toy, upsetting family, friends, and employers for 500 years. This one is red"
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "fidgetspinnerr"
	basestate = "fidgetspinnerr"

/obj/item/weapon/fluff/fidgetspinner/yellow
	name = "Yellow fidget spinner"
	desc = "A spinning stress relief toy, upsetting family, friends, and employers for 500 years. This one is yellow"
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "fidgetspinnery"
	basestate = "fidgetspinnery"

/obj/item/weapon/fluff/fidgetspinner/attack_self(mob/living/user)
	if(user.r_hand == src || user.l_hand == src)
		if(icon_state != "[basestate]-s")
			icon_state = "[basestate]-s"
			user.visible_message("<span class='rose'>[user] spins the [src]!</span>")
			spawn(100)
				icon_state = "[basestate]"
	else
		return ..()
	return

/obj/item/weapon/fluff/squeezetoy
	name = "Stress relief squeeze toy"
	desc = "A toy squeezed to relieve stress, it’s squeaker appears to be broken from over use."
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "squeezetoy"

/obj/item/weapon/fluff/squeezetoy/attack_self(mob/living/user)
	if(user.r_hand == src || user.l_hand == src)
		if(icon_state != "squeezetoy-s")
			icon_state = "squeezetoy-s"
			user.visible_message("<span class='rose'>[user] squeezes the [src] a few times!</span>")
			spawn(50)
				icon_state = "squeezetoy"
	else
		return ..()
	return

/obj/item/weapon/fluff/dimensioncube
	var/folded = 1
	name = "Infinity cube"
	desc = "All the fun of a puzzle cube without any of the challenge, a good way to relieve stress and delude yourself into a sense of accomplishment."
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "infinitycube0"

/obj/item/weapon/fluff/dimensioncube/attack_self(mob/living/user)
	if(user.r_hand == src || user.l_hand == src)
		if(folded == 0)
			icon_state = "infinitycube0"
			user.visible_message("<span class='rose'>[user] folds the [src]!</span>")
			folded = 1
		else if(folded == 1)
			icon_state = "infinitycube1"
			user.visible_message("<span class='rose'>[user] unfolds the [src]!</span>")
			folded = 0
	else
		return ..()
	return

// **************
// SASOperative
// **************

/obj/item/device/modkit_conversion/fluff/skinner/a
	name = "Joseph's modkit Mk1"
	desc = "A kit containing all the needed tools and parts to modify a security jumpsuit."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/under/rank/security
	to_suit = /obj/item/clothing/under/rank/security/fluff/skinner

/obj/item/device/modkit_conversion/fluff/skinner/b
	name = "Joseph's modkit Mk2"
	desc = "A kit containing all the needed tools and parts to modify a security armor."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/armor/vest
	to_suit = /obj/item/clothing/suit/armor/vest/fluff/skinner

/obj/item/device/modkit_conversion/fluff/skinner/c
	name = "Joseph's modkit Mk3"
	desc = "A kit containing all the needed tools and parts to modify a security helmet."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/head/helmet
	to_suit = /obj/item/clothing/head/helmet/fluff/skinner

// **************
// DeepIndigo
// **************

/obj/item/weapon/storage/bible/fluff/amina
	name = "New Space Pioneer's Bible"
	desc = "This one says it was printed in 2492. The name \"Eric Hayvers\" is written on the inside of the cover, crossed out. Under it is written \"Kouri, Amina, Marine Unit 14, Fifth Echelon. Service number NTN-5528928522372\""

// **************
// DameonOwen
// **************

/obj/item/weapon/reagent_containers/food/snacks/cookie/mysterious
	name = "a mysterious cookie"
	desc = "DAS A BIG COOKIE!!!"
	bitesize = 100

/obj/item/weapon/reagent_containers/food/snacks/cookie/mysterious/Initialize()
	. = ..()

/obj/item/weapon/reagent_containers/food/snacks/cookie/mysterious/attack(mob/living/M as mob, mob/user as mob, def_zone)
	. = ..()
	if (M == user)
		M.resize(3)
		M.drop_from_inventory(src)
		qdel(src)


// **************
// NESgamer190
// **************

//Lucy Price
/obj/item/weapon/reagent_containers/food/drinks/flask/vacuumflask/fluff/lucyprice
	name = "Cryostasis Thermos"
	desc = " A thermos that has been designed to look something akin to a mix between a cryostasis beaker and a thermos.  Does NOT keep the drinks cold, surprisingly enough."
	icon_state = "cryothermos"
	icon = 'icons/vore/custom_items_yw.dmi'

// **************
// Moca_The_Porg1
// **************

//Mocha
/obj/item/device/modkit_conversion/fluff/mocha_suit_kit
	name = "Mocha's modkit"
	desc = "A kit containing all the needed tools and parts to modify a Explorer Suit"

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/storage/hooded/explorer
	to_suit = /obj/item/clothing/suit/storage/hooded/fluff/mocha_suit