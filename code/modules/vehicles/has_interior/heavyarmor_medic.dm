/obj/vehicle/has_interior/controller/heavyarmor_medic
	name = "Nurse Bradley"
	desc = "The Heavy Medical Recovery vehicle. Designed to break into areas, rescue crew, and get out, no matter how dangerous. Classified as Station Suppository."
	move_delay = 3

	key_type = /obj/item/weapon/key/heavyarmor_medic

	icon = 'icons/obj/vehicles_160x160.dmi'
	icon_state = "med_tank"

	health = 1200
	maxhealth = 1200
	fire_dam_coeff = 0.2
	brute_dam_coeff = 0.4
	breakwalls = TRUE

	weapons_equiped = list()
	weapons_draw_offset = list()


/obj/item/weapon/key/heavyarmor_medic
	name = "key"
	desc = "A keyring with a small steel key, and a blue and white fob reading \"Do No Harm\" with the Rod of Asclepius engraved on it."
	icon = 'icons/obj/vehicles_op.dmi'
	icon_state = "med_keys"
	w_class = ITEMSIZE_TINY

